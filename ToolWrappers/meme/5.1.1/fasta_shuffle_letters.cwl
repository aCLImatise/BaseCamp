class: CommandLineTool
id: fasta_shuffle_letters.cwl
inputs:
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta-shuffle-letters
