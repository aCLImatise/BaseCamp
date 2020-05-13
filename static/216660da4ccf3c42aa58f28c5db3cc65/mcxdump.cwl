class: CommandLineTool
id: mcxdump.cwl
inputs:
- id: imx
  doc: ''
  type: string
  inputBinding:
    prefix: -imx
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- mcxdump
