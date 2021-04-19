class: CommandLineTool
id: metagraph_Protein_merge_anno.cwl
inputs:
- id: in_an_no_type
  doc: "[STR]    target annotation representation [column]\n( column, brwt, rb_brwt,\n\
    row_diff, row_diff_brwt, row_diff_sparse,\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl\
    \ )"
  type: boolean?
  inputBinding:
    prefix: --anno-type
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_an_not_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_Protein
- merge_anno
