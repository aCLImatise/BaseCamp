class: CommandLineTool
id: ../../../deBGA_aln.cwl
inputs:
- id: index_route
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_pair_end_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pair_end_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: result_file_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- aln
