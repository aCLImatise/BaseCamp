class: CommandLineTool
id: sccaf_regress_out.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- sccaf-regress-out
