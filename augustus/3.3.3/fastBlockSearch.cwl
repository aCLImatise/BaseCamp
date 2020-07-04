class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastBlockSearch.cwl
inputs:
- id: fast_blocks_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fam_dot_pr_fl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastBlockSearch
