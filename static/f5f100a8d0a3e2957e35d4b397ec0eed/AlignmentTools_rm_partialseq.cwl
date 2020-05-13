class: CommandLineTool
id: AlignmentTools_rm_partialseq.cwl
inputs:
- id: alignment_mode
  doc: 'Alignment mode: overlap, glocal, local or global. default = overlap'
  type: string
  inputBinding:
    prefix: --alignment-mode
- id: min_gaps
  doc: The minimum number of continuous gaps in the beginning or end of the query
    alignment. If above the cutoff, the query is marked as partial. default = 50
  type: string
  inputBinding:
    prefix: --min_gaps
- id: knn
  doc: The top k closest targets using a heuristic method. (default = 20)
  type: string
  inputBinding:
    prefix: --knn
- id: alignment_out
  doc: The output file containing the pairwise alignment
  type: string
  inputBinding:
    prefix: --alignment-out
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- rm-partialseq
