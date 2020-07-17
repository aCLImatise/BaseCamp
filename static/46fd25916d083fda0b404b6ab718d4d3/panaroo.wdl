version 1.0

task Panaroo {
  input {
    String? threads
    Boolean? quiet
    Array[String] input_gff_files
    String? out_dir
    String? clean_mode
    String? threshold
    String? family_threshold
    String? len_dif_percent
    Boolean? merge_paralogs
    String? search_radius
    String? re_find_prop_match
    Int? min_trailing_support
    String? trailing_recursive
    String? edge_support_threshold
    Int? length_outlier_support_proportion
    String? remove_by_consensus
    String? high_var_flag
    Int? min_edge_support_sv
    Boolean? all_seq_in_graph
    Boolean? no_clean_edges
    String? alignment
    String? aligner
    String? core_threshold
  }
  command <<<
    panaroo \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(input_gff_files) then ("--input " +  '"' + input_gff_files + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(clean_mode) then ("--clean-mode " +  '"' + clean_mode + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(family_threshold) then ("--family_threshold " +  '"' + family_threshold + '"') else ""} \
      ~{if defined(len_dif_percent) then ("--len_dif_percent " +  '"' + len_dif_percent + '"') else ""} \
      ~{true="--merge_paralogs" false="" merge_paralogs} \
      ~{if defined(search_radius) then ("--search_radius " +  '"' + search_radius + '"') else ""} \
      ~{if defined(re_find_prop_match) then ("--refind_prop_match " +  '"' + re_find_prop_match + '"') else ""} \
      ~{if defined(min_trailing_support) then ("--min_trailing_support " +  '"' + min_trailing_support + '"') else ""} \
      ~{if defined(trailing_recursive) then ("--trailing_recursive " +  '"' + trailing_recursive + '"') else ""} \
      ~{if defined(edge_support_threshold) then ("--edge_support_threshold " +  '"' + edge_support_threshold + '"') else ""} \
      ~{if defined(length_outlier_support_proportion) then ("--length_outlier_support_proportion " +  '"' + length_outlier_support_proportion + '"') else ""} \
      ~{if defined(remove_by_consensus) then ("--remove_by_consensus " +  '"' + remove_by_consensus + '"') else ""} \
      ~{if defined(high_var_flag) then ("--high_var_flag " +  '"' + high_var_flag + '"') else ""} \
      ~{if defined(min_edge_support_sv) then ("--min_edge_support_sv " +  '"' + min_edge_support_sv + '"') else ""} \
      ~{true="--all_seq_in_graph" false="" all_seq_in_graph} \
      ~{true="--no_clean_edges" false="" no_clean_edges} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(core_threshold) then ("--core_threshold " +  '"' + core_threshold + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (default=1)"
    quiet: "suppress additional output"
    input_gff_files: "input GFF3 files (usually output from running Prokka). Can also take a file listing each gff file line by line."
    out_dir: "location of an output directory"
    clean_mode: "The stringency mode at which to run panaroo. Must be one of 'strict','moderate' or 'sensitive'. Each of these modes can be fine tuned using the additional parameters in the 'Graph correction' section. strict: Requires fairly strong evidence (present in  at least 5% of genomes) to keep likely contaminant genes. Will remove genes that are refound more often than they were called originally. moderate: Requires moderate evidence (present in  at least 1% of genomes) to keep likely contaminant genes. Keeps genes that are refound more often than they were called originally. sensitive: Does not delete any genes and only performes merge and refinding operations. Useful if rare plasmids are of interest as these are often hard to disguish from contamination. Results will likely include  higher number of spurious annotations."
    threshold: "sequence identity threshold (default=0.95)"
    family_threshold: "protein family sequence identity threshold (default=0.7)"
    len_dif_percent: "length difference cutoff (default=0.95)"
    merge_paralogs: "don't split paralogs"
    search_radius: "the distance in nucleotides surronding the neighbour of an accessory gene in which to search for it"
    re_find_prop_match: "the proportion of an accessory gene that must be found in order to consider it a match"
    min_trailing_support: "minimum cluster size to keep a gene called at the end of a contig"
    trailing_recursive: "number of times to perform recursive trimming of low support nodes near the end of contigs"
    edge_support_threshold: "minimum support required to keep and edge that has been flagged as a possible mis-assembly"
    length_outlier_support_proportion: "proportion of genomes supporting a gene with a length more than 1.5x outside the interquatile range for genes in the same cluster (default=0.01). Genes failing this test will be re-annotated at the shorter length"
    remove_by_consensus: "if a gene is called in the same region with similar sequence a minority of the time, remove it. One of 'True' or 'False'"
    high_var_flag: "minimum number of nested cycles to call a highly variable gene region (default = 5)."
    min_edge_support_sv: "minimum edge support required to call structural variants in the presence/absence sv file"
    all_seq_in_graph: "Retains all DNA sequence for each gene cluster in the graph output. Off by default as it uses a large amount of space."
    no_clean_edges: "Turn off edge filtering in the final output graph."
    alignment: "Output alignments of core genes or all genes. Options are 'core' and 'pan'. Default: 'None'"
    aligner: "Specify an aligner. Options:'prank', 'clustal', and default: 'mafft'"
    core_threshold: "Core-genome sample threshold (default=0.95)"
  }
}