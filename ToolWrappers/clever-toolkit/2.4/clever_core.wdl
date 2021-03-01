version 1.0

task Clevercore {
  input {
    Boolean? be_verbose_additionalstatistics
    Boolean? arg_significance_level
    Boolean? arg_weight_beconsidered
    Boolean? arg_maximum_insert
    Boolean? arg_maximum_allowed
    Boolean? arg_write_edges
    Boolean? arg_false_discovery
    Boolean? output_cliques_ones
    File? arg_output_reads
    File? arg_output_coverage
    Boolean? use_separate_mean
    Boolean? use_given_distributioninstead
    Boolean? arg_load_cached
    Boolean? arg_bam_file
    Boolean? read_groups_come
    File distribution_file
  }
  command <<<
    clever_core \
      ~{distribution_file} \
      ~{if (be_verbose_additionalstatistics) then "-v" else ""} \
      ~{if (arg_significance_level) then "-p" else ""} \
      ~{if (arg_weight_beconsidered) then "-w" else ""} \
      ~{if (arg_maximum_insert) then "-l" else ""} \
      ~{if (arg_maximum_allowed) then "-c" else ""} \
      ~{if (arg_write_edges) then "-e" else ""} \
      ~{if (arg_false_discovery) then "-f" else ""} \
      ~{if (output_cliques_ones) then "-a" else ""} \
      ~{if (arg_output_reads) then "-r" else ""} \
      ~{if (arg_output_coverage) then "-C" else ""} \
      ~{if (use_separate_mean) then "-A" else ""} \
      ~{if (use_given_distributioninstead) then "-d" else ""} \
      ~{if (arg_load_cached) then "-D" else ""} \
      ~{if (arg_bam_file) then "-R" else ""} \
      ~{if (read_groups_come) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    be_verbose_additionalstatistics: "[ --verbose ]                      Be verbose: output additional\\nstatistics for each variation."
    arg_significance_level: "[ --edge_sig_level ] arg (=0.20000000000000001)\\nSignificance level for edges (the lower\\nthe level, the more edges will be\\npresent)."
    arg_weight_beconsidered: "[ --min_aln_weight ] arg (=0.0016000000000000001)\\nMinimum weight of alignment pairs to be\\nconsidered."
    arg_maximum_insert: "[ --max_insert_length ] arg (=50000)\\nMaximum insert length of alignments to\\nbe considered (0=unlimited)."
    arg_maximum_allowed: "[ --max_coverage ] arg (=200)      Maximum allowed coverage. If exceeded,\\nviolating reads are ignored. The number\\nof such ignored reads is printed to\\nstderr (0=unlimited)."
    arg_write_edges: "[ --write_edges ] arg              Write edges to file of given name."
    arg_false_discovery: "[ --fdr ] arg (=0.10000000000000001)\\nFalse discovery rate (FDR)."
    output_cliques_ones: "[ --all ]                          Output all cliques instead of only the\\nsignificant ones. Cliques are not\\nsorted and last column (FDR) is not\\ncomputed."
    arg_output_reads: "[ --output_reads ] arg             Output reads belonging to at least one\\nsignificant clique to the given\\nfilename (along with their assignment\\nto significant cliques."
    arg_output_coverage: "[ --output_coverage ] arg          Output the coverage with considered\\ninsert segments along the chromosome\\n(one line per position) to the given\\nfilename."
    use_separate_mean: "[ --readgroup_aware ]              Use a separate mean and standard\\ndeviations per read group. If given,\\nargument <distribution-file> must refer\\nto a file containing this information."
    use_given_distributioninstead: "[ --arbitrary_dist ]               Use a given (arbitrary) distribution\\ninstead of a normal distribution as\\nnull model (EXPERIMENTAL)."
    arg_load_cached: "[ --cached_dist ] arg              Load cached distributions as\\nprecomputed with tool\\n\\\"precompute-distributions\\\". Does not\\nchange results, but increases speed.\\nOnly applicable when using option -d."
    arg_bam_file: "[ --read_groups ] arg              BAM file from whose header read group\\ninformation is to be read, required if\\noptions -A or -S are to be used."
    read_groups_come: "[ --multisample ]                  Read groups come from multiple samples\\nas indicated by SM fields in BAM\\nheader. Evaluate cliques sample wise.\\n"
    distribution_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_reads = "${in_arg_output_reads}"
    File out_arg_output_coverage = "${in_arg_output_coverage}"
  }
}