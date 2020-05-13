class: CommandLineTool
id: varlociraptor_call_variants_tumor_normal.cwl
inputs:
- id: '075'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: purity
  doc: ''
  type: boolean
  inputBinding:
    prefix: --purity
- id: tumor
  doc: ''
  type: string
  inputBinding:
    prefix: --tumor
- id: normal
  doc: ''
  type: string
  inputBinding:
    prefix: --normal
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- variants
- tumor-normal
