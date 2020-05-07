class: CommandLineTool
id: slice_fasta_FASTA file_end.cwl
inputs:
- id: sequence_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta
- FASTA file
- end
