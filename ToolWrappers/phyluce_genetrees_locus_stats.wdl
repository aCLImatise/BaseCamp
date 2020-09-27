version 1.0

task PhyluceGenetreesLocusStats {
  input {
    File? config
    String? alignment_files_process
    String? input_format
    String? verbosity
    File? log_path
    Int? cores
    String var_6
  }
  command <<<
    phyluce_genetrees_locus_stats \
      ~{var_6} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(alignment_files_process) then ("--alignments " +  '"' + alignment_files_process + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    config: "The gene tree configuration file"
    alignment_files_process: "Alignment files to process"
    input_format: "The input alignment format."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n"
    var_6: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}