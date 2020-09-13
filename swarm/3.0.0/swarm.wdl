version 1.0

task Swarm {
  input {
    Int? threads
    Int? differences
    Boolean? no_otu_breaking
    Int? boundary
    Int? ceiling
    Boolean? fastidious
    Int? bloom_bits
    Int? append_abundance
    File? internal_structure
    File? log
    File? output_file
    Boolean? mo_thur
    File? statistics_file
    File? uc_lust_file
    File? seeds
    Boolean? u_search_abundance
    Int? match_reward
    Int? mismatch_penalty
    Int? gap_opening_penalty
    Int? gap_extension_penalty
    String? fast_a_file
  }
  command <<<
    swarm \
      ~{fast_a_file} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(differences) then ("--differences " +  '"' + differences + '"') else ""} \
      ~{if (no_otu_breaking) then "--no-otu-breaking" else ""} \
      ~{if defined(boundary) then ("--boundary " +  '"' + boundary + '"') else ""} \
      ~{if defined(ceiling) then ("--ceiling " +  '"' + ceiling + '"') else ""} \
      ~{if (fastidious) then "--fastidious" else ""} \
      ~{if defined(bloom_bits) then ("--bloom-bits " +  '"' + bloom_bits + '"') else ""} \
      ~{if defined(append_abundance) then ("--append-abundance " +  '"' + append_abundance + '"') else ""} \
      ~{if defined(internal_structure) then ("--internal-structure " +  '"' + internal_structure + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (mo_thur) then "--mothur" else ""} \
      ~{if defined(statistics_file) then ("--statistics-file " +  '"' + statistics_file + '"') else ""} \
      ~{if defined(uc_lust_file) then ("--uclust-file " +  '"' + uc_lust_file + '"') else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if (u_search_abundance) then "--usearch-abundance" else ""} \
      ~{if defined(match_reward) then ("--match-reward " +  '"' + match_reward + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch-penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap-opening-penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap-extension-penalty " +  '"' + gap_extension_penalty + '"') else ""}
  >>>
  parameter_meta {
    threads: "number of threads to use (1)"
    differences: "resolution (1)"
    no_otu_breaking: "never break OTUs (not recommended!)"
    boundary: "min mass of large OTUs (3)"
    ceiling: "max memory in MB for Bloom filter (unlim.)"
    fastidious: "link nearby low-abundance swarms"
    bloom_bits: "bits used per Bloom filter entry (16)"
    append_abundance: "value to use when abundance is missing"
    internal_structure: "write internal OTU structure to file"
    log: "log to file, not to stderr"
    output_file: "output result to file (stdout)"
    mo_thur: "output using mothur-like format"
    statistics_file: "dump OTU statistics to file"
    uc_lust_file: "output using UCLUST-like format to file"
    seeds: "write OTU representatives to FASTA file"
    u_search_abundance: "abundance annotation in usearch style"
    match_reward: "reward for nucleotide match (5)"
    mismatch_penalty: "penalty for nucleotide mismatch (4)"
    gap_opening_penalty: "gap open penalty (12)"
    gap_extension_penalty: "gap extension penalty (4)"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_uc_lust_file = "${in_uc_lust_file}"
  }
}