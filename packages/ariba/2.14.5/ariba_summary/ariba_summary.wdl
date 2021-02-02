version 1.0

task AribaSummary {
  input {
    File? fof_n
    String? preset
    Int? cluster_cols
    String? col_filter
    Boolean? no_tree
    String? row_filter
    Float? min_id
    Int? only_clusters
    Boolean? v_groups
    Boolean? known_variants
    Boolean? novel_variants
    Boolean? verbose
    String out_prefix
    String in_files
  }
  command <<<
    ariba summary \
      ~{out_prefix} \
      ~{in_files} \
      ~{if defined(fof_n) then ("--fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(cluster_cols) then ("--cluster_cols " +  '"' + cluster_cols + '"') else ""} \
      ~{if defined(col_filter) then ("--col_filter " +  '"' + col_filter + '"') else ""} \
      ~{if (no_tree) then "--no_tree" else ""} \
      ~{if defined(row_filter) then ("--row_filter " +  '"' + row_filter + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(only_clusters) then ("--only_clusters " +  '"' + only_clusters + '"') else ""} \
      ~{if (v_groups) then "--v_groups" else ""} \
      ~{if (known_variants) then "--known_variants" else ""} \
      ~{if (novel_variants) then "--novel_variants" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    fof_n: "File of filenames of ariba reports to be summarised.\\nMust be used if no input files listed after the\\noutfile. The first column should be the filename. An\\noptional second column can be used to specify a sample\\nname for that file, which will be used instead of the\\nfilename in output files. Columns separated by\\nwhitespace."
    preset: "|cluster_small|cluster_all|cluster_var_groups|all|all_no_filter\\nShorthand for setting --cluster_cols,--col_filter,--\\nrow_filter,--v_groups,--variants. Using this overrides\\nthose options"
    cluster_cols: ",col2,...\\nComma separated list of cluster columns to include.\\nChoose from: assembled, match, ref_seq, pct_id,\\nctg_cov, known_var, novel_var [match]"
    col_filter: "|n      Choose whether columns where all values are \\\"no\\\" or\\n\\\"NA\\\" are removed [y]"
    no_tree: "Do not make phandango tree"
    row_filter: "|n      Choose whether rows where all values are \\\"no\\\" or \\\"NA\\\"\\nare removed [y]"
    min_id: "Minimum percent identity cutoff to count as assembled\\n[90]"
    only_clusters: "Only report data for the given comma-separated list of\\ncluster names, eg: cluster1,cluster2,cluster42"
    v_groups: "Show a group column for each group of variants"
    known_variants: "Report all known variants"
    novel_variants: "Report all novel variants"
    verbose: "Be verbose"
    out_prefix: "Prefix of output files"
    in_files: "Files to be summarised"
  }
  output {
    File out_stdout = stdout()
  }
}