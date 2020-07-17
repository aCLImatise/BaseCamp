version 1.0

task PhyluceAlignFormatConcatenatedPhylipForPaml {
  input {
    String? phylip_alignment
    String? config
    String? path_output_file
    String? verbosity
    String? log_path
  }
  command <<<
    phyluce_align_format_concatenated_phylip_for_paml \
      ~{if defined(phylip_alignment) then ("--phylip-alignment " +  '"' + phylip_alignment + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    phylip_alignment: "The PATH to a PHYLIP-formatted alignment"
    config: "The PATH to a config file containing partition information (RAxML-formatted)"
    path_output_file: "The PATH to an output file (will be PHYLIP formatted)"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
}