class: CommandLineTool
id: emowse.cwl
inputs:
- id: weight
  doc: integer    [0] Whole sequence molwt (Any integer value)
  type: boolean
  inputBinding:
    prefix: -weight
- id: mono
  doc: boolean    [N] Use monoisotopic weights
  type: boolean
  inputBinding:
    prefix: -mono
outputs: []
cwlVersion: v1.1
baseCommand:
- emowse
