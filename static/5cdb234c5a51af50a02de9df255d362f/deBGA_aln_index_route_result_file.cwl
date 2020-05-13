class: CommandLineTool
id: deBGA_aln_index_route_result_file.sam.cwl
inputs:
- id: read_pair_end1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pair_end2fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: result_files_am
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- aln
- index_route
- result_file.sam
