version 1.0

task Swarm {
  input {
    Int? differences
    File? output_file
    Int? threads
    Int? match_reward
    Int? mismatch_penalty
    Int? gap_opening_penalty
    Int? gap_extension_penalty
    File? statistics_file
    File? uc_lust_file
    Boolean? break_swarms
    Boolean? mo_thur
    Boolean? alternative_algorithm
    Boolean? u_search_abundance
    File? filename
  }
  command <<<
    swarm \
      ~{filename} \
      ~{if defined(differences) then ("--differences " +  '"' + differences + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(match_reward) then ("--match-reward " +  '"' + match_reward + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch-penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap-opening-penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap-extension-penalty " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(statistics_file) then ("--statistics-file " +  '"' + statistics_file + '"') else ""} \
      ~{if defined(uc_lust_file) then ("--uclust-file " +  '"' + uc_lust_file + '"') else ""} \
      ~{true="--break-swarms" false="" break_swarms} \
      ~{true="--mothur" false="" mo_thur} \
      ~{true="--alternative-algorithm" false="" alternative_algorithm} \
      ~{true="--usearch_abundance" false="" u_search_abundance}
  >>>
  parameter_meta {
    differences: "resolution (1)"
    output_file: "output result filename (stdout)"
    threads: "number of threads to use (1)"
    match_reward: "reward for nucleotide match (5)"
    mismatch_penalty: "penalty for nucleotide mismatch (4)"
    gap_opening_penalty: "gap open penalty (12)"
    gap_extension_penalty: "gap extension penalty (4)"
    statistics_file: "dump swarm statistics to file (no)"
    uc_lust_file: "output in UCLUST-like format to file (no)"
    break_swarms: "output all pairs of amplicons found (no)"
    mo_thur: "output in mothur list file format (no)"
    alternative_algorithm: "use an alternative algorithm when d=1"
    u_search_abundance: "abundance annotation in usearch style"
    filename: ""
  }
}