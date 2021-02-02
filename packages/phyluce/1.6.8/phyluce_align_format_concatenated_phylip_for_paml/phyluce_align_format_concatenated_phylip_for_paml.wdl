version 1.0

task PhyluceAlignFormatConcatenatedPhylipForPaml {
  input {
    File? phylip_alignment
    File? config
    File? path_output_file
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_align_format_concatenated_phylip_for_paml \
      ~{if (phylip_alignment) then "--phylip-alignment" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    phylip_alignment: "PHYLIP_ALIGNMENT\\n--config CONFIG\\n--output OUTPUT\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]"
    config: "The PATH to a config file containing partition\\ninformation (RAxML-formatted)"
    path_output_file: "The PATH to an output file (will be PHYLIP formatted)"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    File out_phylip_alignment = "${in_phylip_alignment}"
    File out_path_output_file = "${in_path_output_file}"
  }
}