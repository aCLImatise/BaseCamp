version 1.0

task Rfmix {
  input {
    File? query_file
    File? reference_file
    String? sample_map
    File? genetic_map
    String? output_basename
    String? chromosome
    Float? crf_spacing
    Float? rf_window_size
    Float? crf_weight
    Float? generations
    Int? em_iterations
    Boolean? reanalyze_reference
    Int? node_size
    Int? trees
    Float? max_missing
    Int? bootstrap_mode
    Int? rf_minimum_snps
    Float? analyze_range
    String? debug
    Int? n_threads
    Int? random_seed
  }
  command <<<
    rfmix \
      ~{if defined(query_file) then ("--query-file " +  '"' + query_file + '"') else ""} \
      ~{if defined(reference_file) then ("--reference-file " +  '"' + reference_file + '"') else ""} \
      ~{if defined(sample_map) then ("--sample-map " +  '"' + sample_map + '"') else ""} \
      ~{if defined(genetic_map) then ("--genetic-map " +  '"' + genetic_map + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(crf_spacing) then ("--crf-spacing " +  '"' + crf_spacing + '"') else ""} \
      ~{if defined(rf_window_size) then ("--rf-window-size " +  '"' + rf_window_size + '"') else ""} \
      ~{if defined(crf_weight) then ("--crf-weight " +  '"' + crf_weight + '"') else ""} \
      ~{if defined(generations) then ("--generations " +  '"' + generations + '"') else ""} \
      ~{if defined(em_iterations) then ("--em-iterations " +  '"' + em_iterations + '"') else ""} \
      ~{if (reanalyze_reference) then "--reanalyze-reference" else ""} \
      ~{if defined(node_size) then ("--node-size " +  '"' + node_size + '"') else ""} \
      ~{if defined(trees) then ("--trees " +  '"' + trees + '"') else ""} \
      ~{if defined(max_missing) then ("--max-missing " +  '"' + max_missing + '"') else ""} \
      ~{if defined(bootstrap_mode) then ("--bootstrap-mode " +  '"' + bootstrap_mode + '"') else ""} \
      ~{if defined(rf_minimum_snps) then ("--rf-minimum-snps " +  '"' + rf_minimum_snps + '"') else ""} \
      ~{if defined(analyze_range) then ("--analyze-range " +  '"' + analyze_range + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(n_threads) then ("--n-threads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    query_file: "(required)\\nVCF file with samples to analyze                      (required)"
    reference_file: "(required)\\nVCF file with reference individuals                   (required)"
    sample_map: "(required)\\nReference panel sample population classification map  (required)"
    genetic_map: "(required)\\nGenetic map file                                      (required)"
    output_basename: "(required)\\nBasename (prefix) for output files                    (required)"
    chromosome: "(required)\\nExecute only on specified chromosome                  (required)"
    crf_spacing: "Conditional Random Field spacing (# of SNPs)"
    rf_window_size: "Random forest window size (class estimation window size)"
    crf_weight: "Weight of observation term relative to transition term in conditional random field"
    generations: "Average number of generations since expected admixture"
    em_iterations: "Maximum number of EM iterations"
    reanalyze_reference: "In EM, analyze local ancestry of the reference panel and reclassify it"
    node_size: "Terminal node size for random forest trees"
    trees: "Number of tree in random forest to estimate population class probability"
    max_missing: "Maximum proportion of missing data allowed to include a SNP"
    bootstrap_mode: "Specify random forest bootstrap mode as integer code (see manual)"
    rf_minimum_snps: "With genetic sized rf windows, include at least this many SNPs regardless of span"
    analyze_range: "Physical position range, specified as <start pos>-<end pos>, in Mbp (decimal allowed)"
    debug: "Turn on any debugging output"
    n_threads: "Force number of simultaneous thread for parallel execution"
    random_seed: "Seed value for random number generation (integer)\\n(maybe specified in hexadecimal by preceeding with 0x), or the string\\n\\\"clock\\\" to seed with the current system time.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}