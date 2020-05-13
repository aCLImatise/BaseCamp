class: CommandLineTool
id: slice_fasta_end.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_fasta
- end
