class: CommandLineTool
id: ../../../vcfannotategenotypes.cwl
inputs:
- id: annotation_tag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfannotategenotypes
