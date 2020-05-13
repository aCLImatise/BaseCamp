class: CommandLineTool
id: fasta_get_markov_sequence_background.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: background
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-get-markov
- sequence
- background
