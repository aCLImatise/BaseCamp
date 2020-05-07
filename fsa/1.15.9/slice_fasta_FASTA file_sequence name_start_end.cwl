class: CommandLineTool
id: slice_fasta_FASTA file_sequence name_start_end.cwl
inputs:
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta
- FASTA file
- sequence name
- start
- end
