class: CommandLineTool
id: metagraph_Protein_transform_anno.cwl
inputs:
- id: in_intersect_columns
  doc: compute intersection of the annotation columns [off]
  type: boolean?
  inputBinding:
    prefix: --intersect-columns
- id: in_intersect_ratio
  doc: '[FLOAT]    include k-mer if it appears in this ratio of columns [1.0]'
  type: boolean?
  inputBinding:
    prefix: --intersect-ratio
- id: in_rename_cols
  doc: "[STR]  file with rules for renaming annotation labels []\nexample: 'L_1 L_1_renamed\n\
    L_2 L_2_renamed\nL_2 L_2_renamed\n... ...........'"
  type: boolean?
  inputBinding:
    prefix: --rename-cols
- id: in_an_no_type
  doc: "[STR]    target annotation format [column]\n( column, brwt, rb_brwt,\nrow_diff,\
    \ row_diff_brwt, row_diff_sparse,\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl\
    \ )"
  type: boolean?
  inputBinding:
    prefix: --anno-type
- id: in_arity
  doc: arity in the brwt tree [2]
  type: boolean?
  inputBinding:
    prefix: --arity
- id: in_greedy
  doc: use greedy column partitioning in brwt construction [off]
  type: boolean?
  inputBinding:
    prefix: --greedy
- id: in_linkage
  doc: cluster columns and construct linkage matrix [off]
  type: boolean?
  inputBinding:
    prefix: --linkage
- id: in_linkage_file
  doc: "[STR] linkage matrix specifying brwt tree structure []\nexample: '0 1 <dist>\
    \ 4\n2 3 <dist> 5\n4 5 <dist> 6'"
  type: boolean?
  inputBinding:
    prefix: --linkage-file
- id: in_fast
  doc: transform annotation in memory without streaming / sparse subsampling [off]
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_subsample
  doc: '[INT]    number of rows subsampled for distance estimation in column clustering
    [1000000]'
  type: boolean?
  inputBinding:
    prefix: --subsample
- id: in_dump_text_an_no
  doc: dump the columns of the annotator as separate text files [off]
  type: boolean?
  inputBinding:
    prefix: --dump-text-anno
- id: in_row_diff_stage
  doc: '[0|1|2]     stage of the row_diff construction [0]'
  type: boolean?
  inputBinding:
    prefix: --row-diff-stage
- id: in_max_path_length
  doc: '[INT]      maximum path length in row_diff annotation [100]'
  type: boolean?
  inputBinding:
    prefix: --max-path-length
- id: in_in_file_base
  doc: '[STR]          graph for generating succ/pred/anchors (for row_diff types)
    []'
  type: boolean?
  inputBinding:
    prefix: --infile-base
- id: in_parallel_nodes
  doc: '[INT]       number of nodes processed in parallel in brwt tree [n_threads]'
  type: boolean?
  inputBinding:
    prefix: --parallel-nodes
- id: in_disk_swap
  doc: '[STR]    directory for temporary files [OUT_BASEDIR]'
  type: boolean?
  inputBinding:
    prefix: --disk-swap
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
- id: in_annotator
  doc: ''
  type: string
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
- transform_anno
