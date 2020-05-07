class: CommandLineTool
id: deBGA_aln_index_route_read pair_end1.fq_result_file.sam.cwl
inputs:
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pair_end2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: result_files_am
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- aln
- index_route
- read pair-end1.fq
- result_file.sam
