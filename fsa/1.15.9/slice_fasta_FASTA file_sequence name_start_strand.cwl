class: CommandLineTool
id: slice_fasta_FASTA file_sequence name_start_strand.cwl
inputs:
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta
- FASTA file
- sequence name
- start
- strand
