class: CommandLineTool
id: fasta_get_markov_sequence_file_background.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-get-markov
- sequence
- file
- background
