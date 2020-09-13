version 1.0

task PhyluceAlignFormatConcatenatedPhylipForPaml {
  input {
    Boolean? var_0
    String? var_output
    File? config
    String? verbosity
    File? log_path
    String _config_config
  }
  command <<<
    phyluce_align_format_concatenated_phylip_for_paml \
      ~{_config_config} \
      ~{if (var_0) then "--phylip-alignment" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_output: ""
    config: "The PATH to a config file containing partition\\ninformation (RAxML-formatted)"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    _config_config: "--config CONFIG"
  }
  output {
    File out_stdout = stdout()
  }
}