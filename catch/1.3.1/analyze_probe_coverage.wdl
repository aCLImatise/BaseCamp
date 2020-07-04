version 1.0

task AnalyzeProbeCoverage.py {
  input {
    Array[String] dataset
    String? probes_fast_a
    String? mismatches
    String? lcf_th_res
    String? island_of_exact_match
    String? cover_extension
    String? limit_target_genomes
    Boolean? print_analysis
    String? write_analysis_to_tsv
    String? write_sliding_window_coverage
    Int? max_num_processes
    String? km_er_probe_map_k
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    analyze_probe_coverage.py \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(probes_fast_a) then ("--probes-fasta " +  '"' + probes_fast_a + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(lcf_th_res) then ("--lcf-thres " +  '"' + lcf_th_res + '"') else ""} \
      ~{if defined(island_of_exact_match) then ("--island-of-exact-match " +  '"' + island_of_exact_match + '"') else ""} \
      ~{if defined(cover_extension) then ("--cover-extension " +  '"' + cover_extension + '"') else ""} \
      ~{if defined(limit_target_genomes) then ("--limit-target-genomes " +  '"' + limit_target_genomes + '"') else ""} \
      ~{true="--print-analysis" false="" print_analysis} \
      ~{if defined(write_analysis_to_tsv) then ("--write-analysis-to-tsv " +  '"' + write_analysis_to_tsv + '"') else ""} \
      ~{if defined(write_sliding_window_coverage) then ("--write-sliding-window-coverage " +  '"' + write_sliding_window_coverage + '"') else ""} \
      ~{if defined(max_num_processes) then ("--max-num-processes " +  '"' + max_num_processes + '"') else ""} \
      ~{if defined(km_er_probe_map_k) then ("--kmer-probe-map-k " +  '"' + km_er_probe_map_k + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    dataset: "Labels for one or more target datasets (e.g., one label per species)"
    probes_fast_a: "Path to a FASTA file that provides the probes (one per sequence) whose coverage should be analyzed against the genomes in the given datasets"
    mismatches: "Allow for this number of mismatches when determining whether a probe covers a sequence"
    lcf_th_res: "Say that a portion of a probe covers a portion of a sequence if the two share a substring with at most MISMATCHES mismatches that has length >= LCF_THRES bp"
    island_of_exact_match: "(Optional) When determining whether a probe covers a sequence, require that there be an exact match (i.e., no mismatches) of length at least ISLAND_OF_EXACT_MATCH bp between a portion of the probe and a portion of the sequence"
    cover_extension: "Extend the coverage of each side of a probe by this number of bp. That is, a probe covers a region that consists of the portion of a sequence it hybridizes to, as well as this number of bp on each side of that portion. This is useful in modeling hybrid selection, where a probe hybridizes toa fragment that includes the region targeted by the probe, along with surrounding portions of the sequence. Increasing its value should reduce the number of probes required to achieve the desired coverage."
    limit_target_genomes: "(Optional) Use only the first N target genomes in the dataset"
    print_analysis: "Print analysis of the probe set's coverage"
    write_analysis_to_tsv: "The file to which to write a TSV-formatted matrix of the probe set's coverage analysis"
    write_sliding_window_coverage: "The file to which to write the average coverage achieved by the probe set within sliding windows of each target genome"
    max_num_processes: "(Optional) An int >= 1 that gives the maximum number of processes to use in multiprocessing pools; uses min(number of CPUs in the system, MAX_NUM_PROCESSES) processes"
    km_er_probe_map_k: "(Optional) Use this value (KMER_PROBE_LENGTH_K) as the k-mer length when constructing a map of k-mers to the probes that contain these k-mers. This map is used when mapping the given probes to target sequences and the k-mers serve as seeds for calculating whether a probe 'covers' a subsequence. The value should be sufficiently less than the probe length (PROBE_LENGTH) so that it can find mappings even when the candidate probe and target sequence are divergent. In particular, CATCH will try to find a value k >= KMER_PROBE_LENGTH_K (by default, >=10) such that k divides PROBE_LENGTH and k < PROBE_LENGTH / MISMATCHES (if MISMATCHES=0, then k=PROBE_LENGTH). It will then use this k as the k-mer length in mappings; if no such k exists, it will use a randomized approach with KMER_PROBE_LENGTH_K as the k-mer length."
    debug: "Debug output"
    verbose: "Verbose output"
  }
}