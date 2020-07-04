version 1.0

task MtsvBinner {
  input {
    Boolean? include_flag_trigger
    String? edits
    String? fast_a
    String? index
    Int? max_hits
    Int? min_seeds
    String? threads
    String? results
    String? seed_gap
    String? seed_size
  }
  command <<<
    mtsv-binner \
      ~{true="-v" false="" include_flag_trigger} \
      ~{if defined(edits) then ("--edits " +  '"' + edits + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(max_hits) then ("--max-hits " +  '"' + max_hits + '"') else ""} \
      ~{if defined(min_seeds) then ("--min-seeds " +  '"' + min_seeds + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(results) then ("--results " +  '"' + results + '"') else ""} \
      ~{if defined(seed_gap) then ("--seed-gap " +  '"' + seed_gap + '"') else ""} \
      ~{if defined(seed_size) then ("--seed-size " +  '"' + seed_size + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    edits: "Edit distance to tolerate in matched reference sites [default: 3]"
    fast_a: "Absolute path to FASTA query file."
    index: "Absolute path to mtsv index file."
    max_hits: "Skip seeds with more than MAX_HITS hits. [default: 20000]"
    min_seeds: "Set to override minimum number of seeds to perform alignment of a candidate site. [default: 2]"
    threads: "Number of worker threads to spawn. [default: 4]"
    results: "Path to write results file to."
    seed_gap: "Set to override gap between seeds used for initial exact match. [default: 3]"
    seed_size: "Set to override inital exact match query size. [default: 20]"
  }
}