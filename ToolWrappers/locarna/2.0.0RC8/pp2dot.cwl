class: CommandLineTool
id: pp2dot.cwl
inputs:
- id: in_colors
  doc: "Color palette. Use --colors2 to define a second palette for the\nlower-left\
    \ triangle. Default: \"black\",\"cyan\",\"green\",\"yellow\",\"red\""
  type: long
  inputBinding:
    prefix: --colors
- id: in_colors_two
  doc: Color palette for lower left triangle.
  type: long
  inputBinding:
    prefix: --colors2
- id: in_man
  doc: "Full documentation\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pp2dot
