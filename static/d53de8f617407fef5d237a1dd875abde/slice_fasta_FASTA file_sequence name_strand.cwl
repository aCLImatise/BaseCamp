class: CommandLineTool
id: slice_fasta_FASTA file_sequence name_strand.cwl
inputs:
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta
- FASTA file
- sequence name
- strand
