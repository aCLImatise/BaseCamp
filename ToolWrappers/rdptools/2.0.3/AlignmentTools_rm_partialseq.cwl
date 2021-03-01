class: CommandLineTool
id: AlignmentTools_rm_partialseq.cwl
inputs:
- id: in_alignment_mode
  doc: "Alignment mode: overlap, glocal, local or global.\ndefault = overlap"
  type: string?
  inputBinding:
    prefix: --alignment-mode
- id: in_min_gaps
  doc: "The minimum number of continuous gaps in the\nbeginning or end of the query\
    \ alignment. If above\nthe cutoff, the query is marked as partial. default\n=\
    \ 50"
  type: long?
  inputBinding:
    prefix: --min_gaps
- id: in_knn
  doc: "The top k closest targets using a heuristic method.\n(default = 20)"
  type: long?
  inputBinding:
    prefix: --knn
- id: in_alignment_out
  doc: The output file containing the pairwise alignment
  type: File?
  inputBinding:
    prefix: --alignment-out
- id: in_full_length_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_passed_seq_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_alignment_out
  doc: The output file containing the pairwise alignment
  type: File?
  outputBinding:
    glob: $(inputs.in_alignment_out)
hints: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- rm-partialseq
