# My neovim config

## Keybindings

All keyboard shortcuts so far.

Key:

- <kbd>,</kbd> is Leader.

### Basics

- <kbd><</kbd> Unindent line.

- <kbd>></kbd> Indent line.

- <kbd>%</kbd> Goto matching `()[]{}`.

### Undo/Redo

Use `:u` and `:r` respectively. Or use <kbd>u</kbd> and <kbd>r</kbd> from `command` mode.

#### Undo Tree

<kbd>,</kbd> <kbd>z</kbd> Toggle Undo Tree.

### Search and Highlight

In `command` mode. Press <kbd>/</kbd> to enter search. Now type a regex pattern you would like to search.

Clear the selections by using `:noh`.

### Copy/Paste/Select

To select any text, you must enter `visual` mode. Press <kbd>v</kbd> in `normal` mode for this.

- Use arrow keys to expand the selection.

- <kbd>d</kbd> Deletes the selection.

- <kbd>y</kbd> "yank"/copy the selection.

- <kbd>p</kbd> Paste the selection.

- Search by using these 4 in conjuntion on the selected text: <kbd>y</kbd> <kbd>q</kbd> <kbd>/</kbd> <kbd>p</kbd>

- <kbd>r</kbd> Replace selection with text you will now type.

#### Copy/Paste Across Terminals

Use: <kbd>"</kbd> <kbd>+ </kbd> <kbd> y</kbd> and <kbd>"</kbd> <kbd>+ </kbd> <kbd> p</kbd> from `visual` mode.

### For Tiling

- <kbd>Ctrl</kbd> <kbd>W</kbd> <kbd>S</kbd> (upper case) for horizontal splitting

- <kbd>Ctrl</kbd> <kbd>W</kbd> <kbd>v</kbd> (lower case) for vertical splitting

- <kbd>Ctrl</kbd> <kbd>W</kbd> <kbd>Q</kbd> to close one

- <kbd>Ctrl</kbd> <kbd>W</kbd> <kbd>Ctrl</kbd> <kbd>W</kbd> to switch between windows

- <kbd>Ctrl</kbd> <kbd>W</kbd> <kbd>J</kbd> (<kbd>x</kbd> or <kbd>K</kbd>, <kbd>H</kbd>, <kbd>L</kbd>) to switch to adjacent window (intuitively up, down, left, right)

### Shift Lines/Blocks

- <kbd>Shift</kbd> <kbd>k</kbd> to shift line up.

- <kbd>Shift</kbd> <kbd>j</kbd> to shift line down.

### Telescope

- <kbd>,</kbd> <kbd>f</kbd> <kbd>f</kbd> Telescope find_files

- <kbd>,</kbd> <kbd>f</kbd> <kbd>g</kbd> Telescope live_grep

- <kbd>,</kbd> <kbd>f</kbd> <kbd>b</kbd> Telescope buffers

- <kbd>,</kbd> <kbd>f</kbd> <kbd>h</kbd> Telescope help/tags

### LSP

- <kbd>,</kbd> <kbd>r</kbd> <kbd>n</kbd> Renane w/ GUI.

- <kbd>,</kbd> <kbd>c</kbd> <kbd>a</kbd> Code Action w/ GUI.

- <kbd>,</kbd> <kbd>k</kbd> Hover Docs.

- <kbd>g</kbd> <kbd>s</kbd> Signature.

- <kbd>g</kbd> <kbd>h</kbd> LSP Finder.

#### Diagnostics

- <kbd>space</kbd> <kbd>e</kbd> Open Diagnostics.

### Misc

- <kbd>,</kbd> <kbd>p</kbd> Activate Glow (Markdown Previewer)

- <kbd>space</kbd> <kbd>z</kbd> Zen Mode Toggle.

### Multiple Cursors

- <kbd>Ctrl</kbd> <kbd>n</kbd> Select Word under cursor.

- <kbd>Ctrl</kbd> <kbd>Up/Down</kbd> Vertically create cursors.

- <kbd>n</kbd> / <kbd>N</kbd> Goto Next/Previous occurence.

- <kbd>[</kbd> <kbd>]</kbd> Select Next/Previous cursor.

- <kbd>q</kbd> Skip current and get next occurence.

- <kbd>Q</kbd> Remove current cursor.

- <kbd>a</kbd> / <kbd>i</kbd> Insert mode.

## Find and Replace

Uses Spectre

- <kbd>,</kbd> <kbd>S</kbd> Toggles Spectre (No context).

- <kbd>,</kbd> <kbd>s</kbd> <kbd>w</kbd> Toggles Spectre with word under cursor as context.

Once you've made entries, navigate to the line and use: 

- <kbd>,</kbd> <kbd>r</kbd> <kbd>c</kbd> Replace in current line.

- <kbd>,</kbd> <kbd>R</kbd> Replace all.

- <kbd>,</kbd> <kbd>Enter</kbd> Go to File.

- <kbd>,</kbd> <kbd>o</kbd> Show options.

## Snippets

<details>

  <summary>Click to expand</summary>

### Basic Methods

|  Prefix | Method                                              |
| ------: | --------------------------------------------------- |
|  `imp→` | `import moduleName from 'module'`                   |
|  `imn→` | `import 'module'`                                   |
|  `imd→` | `import { destructuredModule } from 'module'`       |
|  `ime→` | `import * as alias from 'module'`                   |
|  `ima→` | `import { originalName as aliasName} from 'module'` |
|  `exp→` | `export default moduleName`                         |
|  `exd→` | `export { destructuredModule } from 'module'`       |
|  `exa→` | `export { originalName as aliasName} from 'module'` |
|  `enf→` | `export const functionName = (params) => { }`       |
|  `edf→` | `export default (params) => { }`                    |
| `ednf→` | `export default function functionName(params) { }`  |
|  `met→` | `methodName = (params) => { }`                      |
|  `fre→` | `arrayName.forEach(element => { }`                  |
|  `fof→` | `for(let itemName of objectName { }`                |
|  `fin→` | `for(let itemName in objectName { }`                |
| `anfn→` | `(params) => { }`                                   |
|  `nfn→` | `const functionName = (params) => { }`              |
|  `dob→` | `const {propName} = objectToDescruct`               |
|  `dar→` | `const [propName] = arrayToDescruct`                |
|  `sti→` | `setInterval(() => { }, intervalTime`               |
|  `sto→` | `setTimeout(() => { }, delayTime`                   |
| `prom→` | `return new Promise((resolve, reject) => { }`       |
| `cmmb→` | `comment block`                                     |
|   `cp→` | `const { } = this.props`                            |
|   `cs→` | `const { } = this.state`                            |

### React

|      Prefix | Method                                                                      |
| ----------: | --------------------------------------------------------------------------- |
|      `imr→` | `import React from 'react'`                                                 |
|     `imrd→` | `import ReactDOM from 'react-dom'`                                          |
|     `imrc→` | `import React, { Component } from 'react'`                                  |
|    `imrpc→` | `import React, { PureComponent } from 'react'`                              |
|     `imrm→` | `import React, { memo } from 'react'`                                       |
|     `imrr→` | `import { BrowserRouter as Router, Route, NavLink} from 'react-router-dom'` |
|     `imbr→` | `import { BrowserRouter as Router} from 'react-router-dom'`                 |
|    `imbrc→` | `import { Route, Switch, NavLink, Link } from react-router-dom'`            |
|    `imbrr→` | `import { Route } from 'react-router-dom'`                                  |
|    `imbrs→` | `import { Switch } from 'react-router-dom'`                                 |
|    `imbrl→` | `import { Link } from 'react-router-dom'`                                   |
|   `imbrnl→` | `import { NavLink } from 'react-router-dom'`                                |
|     `imrs→` | `import React, { useState } from 'react'`                                   |
|    `imrse→` | `import React, { useState, useEffect } from 'react'`                        |
|    `redux→` | `import { connect } from 'react-redux'`                                     |
|      `est→` | `this.state = { }`                                                          |
|      `cdm→` | `componentDidMount = () => { }`                                             |
|      `scu→` | `shouldComponentUpdate = (nextProps, nextState) => { }`                     |
|     `cdup→` | `componentDidUpdate = (prevProps, prevState) => { }`                        |
|     `cwun→` | `componentWillUnmount = () => { }`                                          |
|    `gdsfp→` | `static getDerivedStateFromProps(nextProps, prevState) { }`                 |
|     `gsbu→` | `getSnapshotBeforeUpdate = (prevProps, prevState) => { }`                   |
|      `sst→` | `this.setState({ })`                                                        |
|      `ssf→` | `this.setState((state, props) => return { })`                               |
|    `props→` | `this.props.propName`                                                       |
|    `state→` | `this.state.stateName`                                                      |
| `rcontext→` | `const $1 = React.createContext()`                                          |
|     `cref→` | `this.$1Ref = React.createRef()`                                            |
|     `fref→` | `const ref = React.createRef()`                                             |
|      `bnd→` | `this.methodName = this.methodName.bind(this)`                              |

### React Native

|     Prefix | Method                                 |
| ---------: | -------------------------------------- |
|    `imrn→` | `import { $1 } from 'react-native'`    |
| `rnstyle→` | `const styles = StyleSheet.create({})` |

### Redux

|       Prefix | Method                    |
| -----------: | ------------------------- |
|  `rxaction→` | `redux action template`   |
|   `rxconst→` | `export const $1 = '$1'`  |
| `rxreducer→` | `redux reducer template`  |
|  `rxselect→` | `redux selector template` |
|   `rxslice→` | `redux slice template`    |

### PropTypes

|    Prefix | Method                                   |
| --------: | ---------------------------------------- |
|    `pta→` | `PropTypes.array`                        |
|   `ptar→` | `PropTypes.array.isRequired`             |
|    `ptb→` | `PropTypes.bool`                         |
|   `ptbr→` | `PropTypes.bool.isRequired`              |
|    `ptf→` | `PropTypes.func`                         |
|   `ptfr→` | `PropTypes.func.isRequired`              |
|    `ptn→` | `PropTypes.number`                       |
|   `ptnr→` | `PropTypes.number.isRequired`            |
|    `pto→` | `PropTypes.object`                       |
|   `ptor→` | `PropTypes.object.isRequired`            |
|    `pts→` | `PropTypes.string`                       |
|   `ptsr→` | `PropTypes.string.isRequired`            |
|   `ptnd→` | `PropTypes.node`                         |
|  `ptndr→` | `PropTypes.node.isRequired`              |
|   `ptel→` | `PropTypes.element`                      |
|  `ptelr→` | `PropTypes.element.isRequired`           |
|    `pti→` | `PropTypes.instanceOf(name)`             |
|   `ptir→` | `PropTypes.instanceOf(name).isRequired`  |
|    `pte→` | `PropTypes.oneOf([name])`                |
|   `pter→` | `PropTypes.oneOf([name]).isRequired`     |
|   `ptet→` | `PropTypes.oneOfType([name])`            |
|  `ptetr→` | `PropTypes.oneOfType([name]).isRequired` |
|   `ptao→` | `PropTypes.arrayOf(name)`                |
|  `ptaor→` | `PropTypes.arrayOf(name).isRequired`     |
|   `ptoo→` | `PropTypes.objectOf(name)`               |
|  `ptoor→` | `PropTypes.objectOf(name).isRequired`    |
|   `ptsh→` | `PropTypes.shape({ })`                   |
|  `ptshr→` | `PropTypes.shape({ }).isRequired`        |
|  `ptany→` | `PropTypes.any`                          |
| `ptypes→` | `static propTypes = {}`                  |

### Console

| Prefix | Method                                                       |
| ------ | ------------------------------------------------------------ |
| `clg→` | `console.log(object)`                                        |
| `clo→` | `` console.log(`object`, object) ``                          |
| `clj→` | `` console.log(`object`, JSON.stringify(object, null, 2)) `` |
| `ctm→` | `` console.time(`timeId`) ``                                 |
| `cte→` | `` console.timeEnd(`timeId`) ``                              |
| `cas→` | `console.assert(expression,object)`                          |
| `ccl→` | `console.clear()`                                            |
| `cco→` | `console.count(label)`                                       |
| `cdi→` | `console.dir`                                                |
| `cer→` | `console.error(object)`                                      |
| `cgr→` | `console.group(label)`                                       |
| `cge→` | `console.groupEnd()`                                         |
| `ctr→` | `console.trace(object)`                                      |
| `cwa→` | `console.warn`                                               |
| `cin→` | `console.info`                                               |

</details>
