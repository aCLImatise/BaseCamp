class: CommandLineTool
id: circos_ambiguous..cwl
inputs:
- id: in_hood
  doc: http://www.circos.ca/documentation/tutorials/configuration/debugging
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- circos
- ambiguous.
