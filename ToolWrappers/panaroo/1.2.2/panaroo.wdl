version 1.0

task Panaroo {
  input {
    String? clean_mode
    Int? threads
    Boolean? quiet
    Array[String] input_files_output
    Directory? out_dir
    Float? threshold
    Float? family_threshold
    Int? len_dif_percent
    Boolean? merge_paralogs
    String? search_radius
    String? re_find_prop_match
    Int? min_trailing_support
    Int? trailing_recursive
    String? edge_support_threshold
    Int? length_outlier_support_proportion
    String? remove_by_consensus
    Int? high_var_flag
    Int? min_edge_support_sv
    Boolean? all_seq_in_graph
    Boolean? no_clean_edges
    String? alignment
    String? aligner
    Float? core_threshold
  }
  command <<<
    panaroo \
      ~{if defined(clean_mode) then ("--clean-mode " +  '"' + clean_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(input_files_output) then ("--input " +  '"' + input_files_output + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(family_threshold) then ("--family_threshold " +  '"' + family_threshold + '"') else ""} \
      ~{if defined(len_dif_percent) then ("--len_dif_percent " +  '"' + len_dif_percent + '"') else ""} \
      ~{if (merge_paralogs) then "--merge_paralogs" else ""} \
      ~{if defined(search_radius) then ("--search_radius " +  '"' + search_radius + '"') else ""} \
      ~{if defined(re_find_prop_match) then ("--refind_prop_match " +  '"' + re_find_prop_match + '"') else ""} \
      ~{if defined(min_trailing_support) then ("--min_trailing_support " +  '"' + min_trailing_support + '"') else ""} \
      ~{if defined(trailing_recursive) then ("--trailing_recursive " +  '"' + trailing_recursive + '"') else ""} \
      ~{if defined(edge_support_threshold) then ("--edge_support_threshold " +  '"' + edge_support_threshold + '"') else ""} \
      ~{if defined(length_outlier_support_proportion) then ("--length_outlier_support_proportion " +  '"' + length_outlier_support_proportion + '"') else ""} \
      ~{if defined(remove_by_consensus) then ("--remove_by_consensus " +  '"' + remove_by_consensus + '"') else ""} \
      ~{if defined(high_var_flag) then ("--high_var_flag " +  '"' + high_var_flag + '"') else ""} \
      ~{if defined(min_edge_support_sv) then ("--min_edge_support_sv " +  '"' + min_edge_support_sv + '"') else ""} \
      ~{if (all_seq_in_graph) then "--all_seq_in_graph" else ""} \
      ~{if (no_clean_edges) then "--no_clean_edges" else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(core_threshold) then ("--core_threshold " +  '"' + core_threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clean_mode: "[-c ID]"
    threads: "number of threads to use (default=1)"
    quiet: "suppress additional output"
    input_files_output: "input GFF3 files (usually output from running Prokka).\\nCan also take a file listing each gff file line by\\nline."
    out_dir: "location of an output directory"
    threshold: "sequence identity threshold (default=0.95)"
    family_threshold: "protein family sequence identity threshold\\n(default=0.7)"
    len_dif_percent: "length difference cutoff (default=0.95)"
    merge_paralogs: "don't split paralogs"
    search_radius: "the distance in nucleotides surronding the neighbour\\nof an accessory gene in which to search for it"
    re_find_prop_match: "the proportion of an accessory gene that must be found\\nin order to consider it a match"
    min_trailing_support: "minimum cluster size to keep a gene called at the end\\nof a contig"
    trailing_recursive: "number of times to perform recursive trimming of low\\nsupport nodes near the end of contigs"
    edge_support_threshold: "minimum support required to keep and edge that has\\nbeen flagged as a possible mis-assembly"
    length_outlier_support_proportion: "proportion of genomes supporting a gene with a length\\nmore than 1.5x outside the interquatile range for\\ngenes in the same cluster (default=0.01). Genes\\nfailing this test will be re-annotated at the shorter\\nlength"
    remove_by_consensus: "if a gene is called in the same region with similar\\nsequence a minority of the time, remove it. One of\\n'True' or 'False'"
    high_var_flag: "minimum number of nested cycles to call a highly\\nvariable gene region (default = 5)."
    min_edge_support_sv: "minimum edge support required to call structural\\nvariants in the presence/absence sv file"
    all_seq_in_graph: "Retains all DNA sequence for each gene cluster in the\\ngraph output. Off by default as it uses a large amount\\nof space."
    no_clean_edges: "Turn off edge filtering in the final output graph."
    alignment: "Output alignments of core genes or all genes. Options\\nare 'core' and 'pan'. Default: 'None'"
    aligner: "Specify an aligner. Options:'prank', 'clustal', and\\ndefault: 'mafft'"
    core_threshold: "Core-genome sample threshold (default=0.95)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}