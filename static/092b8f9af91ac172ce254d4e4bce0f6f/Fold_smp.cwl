class: CommandLineTool
id: Fold_smp.cwl
inputs:
- id: fold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- Fold-smp
