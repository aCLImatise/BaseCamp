class: CommandLineTool
id: heinz.cwl
inputs:
- id: in_fdr
  doc: Specifies fdr
  type: long
  inputBinding:
    prefix: -FDR
- id: in_specifies_a
  doc: Specifies a
  type: long
  inputBinding:
    prefix: -a
- id: in_edge_list_file
  doc: Edge list file
  type: File
  inputBinding:
    prefix: -e
- id: in_enum
  doc: "Enumeration mode:\n0 - No enumeration\n1 - No root\n2 - Fix root\n3 - No root\
    \ per component (default)"
  type: long
  inputBinding:
    prefix: -enum
- id: in_formulation_problem_single
  doc: "Formulation of the problem:\n0 - Single Commodity Flow\n1 - Multi Commodity\
    \ Flow\n2 - Cut formulation (Flow)\n3 - Cut formulation (Flow-min)\n4 - Cut formulation\
    \ (Node-separator)\n5 - Cut formulation (Node-separator, BK, default)\n6 - Tree\
    \ DP\n7 - Tree DP heuristic (fixed_edge)\n8 - Tree DP heuristic (random_edge)\n\
    9 - Tree DP heuristic (uniform_edge)"
  type: long
  inputBinding:
    prefix: -f
- id: in_lambda
  doc: Specifies lambda
  type: long
  inputBinding:
    prefix: -lambda
- id: in_specifies_number_threads
  doc: 'Specifies number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: in_max_cuts
  doc: "Specifies the maximum number of cuts per step\n(only in conjuction with -f\
    \ 2, optional, default: -1)"
  type: long
  inputBinding:
    prefix: -maxCuts
- id: in_node_file
  doc: Node file
  type: File
  inputBinding:
    prefix: -n
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
- id: in_enable_preprocessing
  doc: Enable preprocessing
  type: boolean
  inputBinding:
    prefix: -p
- id: in_specifies_root_optional
  doc: Specifies the root node (optional)
  type: string
  inputBinding:
    prefix: -r
- id: in_stp_node_file
  doc: STP node file
  type: File
  inputBinding:
    prefix: -s
- id: in_time_limit_seconds
  doc: 'Time limit (in seconds, default: -1)'
  type: long
  inputBinding:
    prefix: -t
- id: in_verbosity
  doc: "Specifies the verbosity level:\n0 - No output\n1 - Only necessary output\n\
    2 - More verbose output (default)\n3 - Debug output"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_version
  doc: "Show version number\n"
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- heinz
