class: CommandLineTool
id: pp2dot.cwl
inputs:
- id: colors
  doc: 'Color palette. Use --colors2 to define a second palette for the lower-left
    triangle. Default: "black","cyan","green","yellow","red"'
  type: string
  inputBinding:
    prefix: --colors
- id: colors_2
  doc: Color palette for lower left triangle.
  type: string
  inputBinding:
    prefix: --colors2
- id: man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- pp2dot
