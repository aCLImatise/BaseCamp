version 1.0

task GalruCreateSpecies {
  input {
    String? output_directory
    String? threads
    String? refseq_category
    String? assembly_level
    String? cd_hit_seq_identity
    Boolean? allow_missing_st
    Boolean? debug
    Boolean? verbose
    String species
  }
  command <<<
    galru_create_species \
      ~{species} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(refseq_category) then ("--refseq_category " +  '"' + refseq_category + '"') else ""} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(cd_hit_seq_identity) then ("--cdhit_seq_identity " +  '"' + cd_hit_seq_identity + '"') else ""} \
      ~{true="--allow_missing_st" false="" allow_missing_st} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_directory: "Output directory, defaults to species name in current directory (default: None)"
    threads: "No. of threads to use (default: 1)"
    refseq_category: "Sequencing technology (default: all)"
    assembly_level: "Assembly level (default: complete)"
    cd_hit_seq_identity: "Sequence identity for CD-hit (default: 0.99)"
    allow_missing_st: "Use files with missing ST [False]"
    debug: "Turn on debugging and save intermediate files (default: False)"
    verbose: "Turn on verbose output (default: False)"
    species: "Species in quotes"
  }
}