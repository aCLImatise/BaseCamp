class: CommandLineTool
id: ../../../genotypeSummary.cwl
inputs:
- id: type
  doc: ''
  type: string
  inputBinding:
    prefix: --type
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: genotypes_umm_mary
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genotypeSummary
