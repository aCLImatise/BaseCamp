class: CommandLineTool
id: ../../../fasta_get_markov.cwl
inputs:
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: background
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_3
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-get-markov
