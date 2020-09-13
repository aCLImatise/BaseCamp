version 1.0

task Graphtofasta {
  input {
    Boolean? arg_json_files
    File? arg_output_file
    Boolean? arg_output_folder
    Boolean? arg_fasta_reference
    String? log_level
    File? log_file
    Int? log_async
  }
  command <<<
    graph_to_fasta \
      ~{if (arg_json_files) then "-g" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_output_folder) then "-O" else ""} \
      ~{if (arg_fasta_reference) then "-r" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  parameter_meta {
    arg_json_files: "[ --graph-spec ] arg    JSON file(s) describing the graph"
    arg_output_file: "[ --output-file ] arg   Output file name. Will output to stdout if '-' or\\nneither of output-file or output-folder provided."
    arg_output_folder: "[ --output-folder ] arg Output folder path. paragraph will attempt to\\ncreate the folder but not the entire path. Will\\noutput to stdout if neither of output-file or\\noutput-folder provided. If specified, paragraph\\nwill produce one output file for each input file\\nbearing the same name."
    arg_fasta_reference: "[ --reference ] arg     FASTA with reference genome"
    log_level: "(=info)    Set log level (error, warning, info)."
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)       Enable / disable async logging."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}