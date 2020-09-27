class: CommandLineTool
id: ariba_summary.cwl
inputs:
- id: in_fof_n
  doc: "File of filenames of ariba reports to be summarised.\nMust be used if no input\
    \ files listed after the\noutfile. The first column should be the filename. An\n\
    optional second column can be used to specify a sample\nname for that file, which\
    \ will be used instead of the\nfilename in output files. Columns separated by\n\
    whitespace."
  type: File
  inputBinding:
    prefix: --fofn
- id: in_preset
  doc: "|cluster_small|cluster_all|cluster_var_groups|all|all_no_filter\nShorthand\
    \ for setting --cluster_cols,--col_filter,--\nrow_filter,--v_groups,--variants.\
    \ Using this overrides\nthose options"
  type: string
  inputBinding:
    prefix: --preset
- id: in_cluster_cols
  doc: ",col2,...\nComma separated list of cluster columns to include.\nChoose from:\
    \ assembled, match, ref_seq, pct_id,\nctg_cov, known_var, novel_var [match]"
  type: long
  inputBinding:
    prefix: --cluster_cols
- id: in_col_filter
  doc: "|n      Choose whether columns where all values are \"no\" or\n\"NA\" are\
    \ removed [y]"
  type: string
  inputBinding:
    prefix: --col_filter
- id: in_no_tree
  doc: Do not make phandango tree
  type: boolean
  inputBinding:
    prefix: --no_tree
- id: in_row_filter
  doc: "|n      Choose whether rows where all values are \"no\" or \"NA\"\nare removed\
    \ [y]"
  type: string
  inputBinding:
    prefix: --row_filter
- id: in_min_id
  doc: "Minimum percent identity cutoff to count as assembled\n[90]"
  type: double
  inputBinding:
    prefix: --min_id
- id: in_only_clusters
  doc: "Only report data for the given comma-separated list of\ncluster names, eg:\
    \ cluster1,cluster2,cluster42"
  type: long
  inputBinding:
    prefix: --only_clusters
- id: in_v_groups
  doc: Show a group column for each group of variants
  type: boolean
  inputBinding:
    prefix: --v_groups
- id: in_known_variants
  doc: Report all known variants
  type: boolean
  inputBinding:
    prefix: --known_variants
- id: in_novel_variants
  doc: Report all novel variants
  type: boolean
  inputBinding:
    prefix: --novel_variants
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_out_prefix
  doc: Prefix of output files
  type: string
  inputBinding:
    position: 0
- id: in_in_files
  doc: Files to be summarised
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ariba
- summary
