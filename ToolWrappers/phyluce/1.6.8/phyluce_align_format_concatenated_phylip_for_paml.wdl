version 1.0

task PhyluceAlignFormatConcatenatedPhylipForPaml {
  input {
    File? path_phylipformatted_alignment
    File? config
    File? path_output_file
    String? verbosity
    File? log_path
    String _config_config
  }
  command <<<
    phyluce_align_format_concatenated_phylip_for_paml \
      ~{_config_config} \
      ~{if defined(path_phylipformatted_alignment) then ("--phylip-alignment " +  '"' + path_phylipformatted_alignment + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_phylipformatted_alignment: "The PATH to a PHYLIP-formatted alignment"
    config: "The PATH to a config file containing partition\\ninformation (RAxML-formatted)"
    path_output_file: "The PATH to an output file (will be PHYLIP formatted)"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    _config_config: "--config CONFIG"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}