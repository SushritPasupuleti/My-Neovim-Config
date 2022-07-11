# My neovim config

## Snippets

Go to [Snippets File](Snippets.md)

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

