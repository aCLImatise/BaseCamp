version 1.0

task AnalyzeProbeCoveragepy {
  input {
    Int? m
    Array[String] dataset
    File? probes_fast_a
    Int? mismatches
    Int? lcf_th_res
    Int? island_of_exact_match
    Int? cover_extension
    String? limit_target_genomes
    Boolean? print_analysis
    File? write_analysis_to_tsv
    File? write_sliding_window_coverage
    Int? max_num_processes
    Int? km_er_probe_map_k
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    analyze_probe_coverage_py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(probes_fast_a) then ("--probes-fasta " +  '"' + probes_fast_a + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(lcf_th_res) then ("--lcf-thres " +  '"' + lcf_th_res + '"') else ""} \
      ~{if defined(island_of_exact_match) then ("--island-of-exact-match " +  '"' + island_of_exact_match + '"') else ""} \
      ~{if defined(cover_extension) then ("--cover-extension " +  '"' + cover_extension + '"') else ""} \
      ~{if defined(limit_target_genomes) then ("--limit-target-genomes " +  '"' + limit_target_genomes + '"') else ""} \
      ~{if (print_analysis) then "--print-analysis" else ""} \
      ~{if defined(write_analysis_to_tsv) then ("--write-analysis-to-tsv " +  '"' + write_analysis_to_tsv + '"') else ""} \
      ~{if defined(write_sliding_window_coverage) then ("--write-sliding-window-coverage " +  '"' + write_sliding_window_coverage + '"') else ""} \
      ~{if defined(max_num_processes) then ("--max-num-processes " +  '"' + max_num_processes + '"') else ""} \
      ~{if defined(km_er_probe_map_k) then ("--kmer-probe-map-k " +  '"' + km_er_probe_map_k + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    m: "[--island-of-exact-match ISLAND_OF_EXACT_MATCH]\\n[-e COVER_EXTENSION]\\n[--limit-target-genomes LIMIT_TARGET_GENOMES]\\n[--print-analysis]\\n[--write-analysis-to-tsv WRITE_ANALYSIS_TO_TSV]\\n[--write-sliding-window-coverage WRITE_SLIDING_WINDOW_COVERAGE]\\n[--max-num-processes MAX_NUM_PROCESSES]\\n[--kmer-probe-map-k KMER_PROBE_MAP_K]\\n[--debug] [--verbose] [-V]"
    dataset: "Labels for one or more target datasets (e.g., one\\nlabel per species)"
    probes_fast_a: "Path to a FASTA file that provides the probes (one per\\nsequence) whose coverage should be analyzed against\\nthe genomes in the given datasets"
    mismatches: "Allow for this number of mismatches when determining\\nwhether a probe covers a sequence"
    lcf_th_res: "Say that a portion of a probe covers a portion of a\\nsequence if the two share a substring with at most\\nMISMATCHES mismatches that has length >= LCF_THRES bp"
    island_of_exact_match: "(Optional) When determining whether a probe covers a\\nsequence, require that there be an exact match (i.e.,\\nno mismatches) of length at least\\nISLAND_OF_EXACT_MATCH bp between a portion of the\\nprobe and a portion of the sequence"
    cover_extension: "Extend the coverage of each side of a probe by this\\nnumber of bp. That is, a probe covers a region that\\nconsists of the portion of a sequence it hybridizes\\nto, as well as this number of bp on each side of that\\nportion. This is useful in modeling hybrid selection,\\nwhere a probe hybridizes toa fragment that includes\\nthe region targeted by the probe, along with\\nsurrounding portions of the sequence. Increasing its\\nvalue should reduce the number of probes required to\\nachieve the desired coverage."
    limit_target_genomes: "(Optional) Use only the first N target genomes in the\\ndataset"
    print_analysis: "Print analysis of the probe set's coverage"
    write_analysis_to_tsv: "The file to which to write a TSV-formatted matrix of\\nthe probe set's coverage analysis"
    write_sliding_window_coverage: "The file to which to write the average coverage\\nachieved by the probe set within sliding windows of\\neach target genome"
    max_num_processes: "(Optional) An int >= 1 that gives the maximum number\\nof processes to use in multiprocessing pools; uses\\nmin(number of CPUs in the system, MAX_NUM_PROCESSES)\\nprocesses"
    km_er_probe_map_k: "(Optional) Use this value (KMER_PROBE_LENGTH_K) as the\\nk-mer length when constructing a map of k-mers to the\\nprobes that contain these k-mers. This map is used\\nwhen mapping the given probes to target sequences and\\nthe k-mers serve as seeds for calculating whether a\\nprobe 'covers' a subsequence. The value should be\\nsufficiently less than the probe length (PROBE_LENGTH)\\nso that it can find mappings even when the candidate\\nprobe and target sequence are divergent. In\\nparticular, CATCH will try to find a value k >=\\nKMER_PROBE_LENGTH_K (by default, >=10) such that k\\ndivides PROBE_LENGTH and k < PROBE_LENGTH / MISMATCHES\\n(if MISMATCHES=0, then k=PROBE_LENGTH). It will then\\nuse this k as the k-mer length in mappings; if no such\\nk exists, it will use a randomized approach with\\nKMER_PROBE_LENGTH_K as the k-mer length."
    debug: "Debug output"
    verbose: "Verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}