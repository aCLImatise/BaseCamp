version 1.0

task Rfmix {
  input {
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
    String? analyze_range
    String? debug
    Int? n_threads
    String? random_seed
  }
  command <<<
    rfmix \
      ~{if defined(crf_spacing) then ("--crf-spacing " +  '"' + crf_spacing + '"') else ""} \
      ~{if defined(rf_window_size) then ("--rf-window-size " +  '"' + rf_window_size + '"') else ""} \
      ~{if defined(crf_weight) then ("--crf-weight " +  '"' + crf_weight + '"') else ""} \
      ~{if defined(generations) then ("--generations " +  '"' + generations + '"') else ""} \
      ~{if defined(em_iterations) then ("--em-iterations " +  '"' + em_iterations + '"') else ""} \
      ~{true="--reanalyze-reference" false="" reanalyze_reference} \
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
    random_seed: "Seed value for random number generation (integer) (maybe specified in hexadecimal by preceeding with 0x), or the string \"clock\" to seed with the current system time."
  }
}