class: CommandLineTool
id: fasta_get_markov_sequence_file_file.cwl
inputs:
- id: background
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-get-markov
- sequence
- file
- file
