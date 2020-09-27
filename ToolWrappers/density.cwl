class: CommandLineTool
id: density.cwl
inputs:
- id: in_window
  doc: integer    [100] Window length (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_display
  doc: "menu       [none] Select graph type (Values: D (Dual -\ngraphic showing individual\
    \ bases); Q (Quad -\nAT vs GC graphic); none (none))"
  type: boolean
  inputBinding:
    prefix: -display
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- density
