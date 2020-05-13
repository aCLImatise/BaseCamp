class: CommandLineTool
id: deBGA_aln_index_route_read pair_end1.fq_read_pair_end2.fq.cwl
inputs:
- id: result_files_am
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- aln
- index_route
- read pair-end1.fq
- read
- pair-end2.fq
