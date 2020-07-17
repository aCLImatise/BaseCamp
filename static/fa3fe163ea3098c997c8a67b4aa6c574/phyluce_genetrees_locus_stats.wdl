version 1.0

task PhyluceGenetreesLocusStats {
  input {
    String? config
    String? alignments
    String? input_format
    String? verbosity
    String? log_path
    String? cores
  }
  command <<<
    phyluce_genetrees_locus_stats \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    config: "The gene tree configuration file"
    alignments: "Alignment files to process"
    input_format: "The input alignment format."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    cores: "Process alignments in parallel using --cores for alignment. This is the number of PHYSICAL CPUs."
  }
}