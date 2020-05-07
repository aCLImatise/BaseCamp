class: CommandLineTool
id: deBGA_aln_pair_end2.fq.cwl
inputs:
- id: index_route
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_pair_end1fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pair_end2fq
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: result_files_am
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- aln
- pair-end2.fq
