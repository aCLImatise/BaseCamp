class: CommandLineTool
id: fretree.cwl
inputs:
- id: in_initial_tree
  doc: "menu       [Arbitary] Initial tree (Values: a\n(Arbitary); u (User); s (Specify))"
  type: boolean
  inputBinding:
    prefix: -initialtree
- id: in_format
  doc: "menu       [p] Format to write trees (Values: p\n(PHYLIP); n (NEXUS); x (XML))"
  type: boolean
  inputBinding:
    prefix: -format
- id: in_screen_width
  doc: "integer    [80] Width of terminal screen in characters\n(Any integer value)"
  type: boolean
  inputBinding:
    prefix: -screenwidth
- id: in_v_screen_width
  doc: "integer    [80] Width of plotting area in characters\n(Any integer value)"
  type: boolean
  inputBinding:
    prefix: -vscreenwidth
- id: in_screen_lines
  doc: "integer    [24] Number of lines on screen (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -screenlines
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fretree
