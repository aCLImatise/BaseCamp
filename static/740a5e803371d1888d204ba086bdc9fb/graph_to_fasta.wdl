version 1.0

task GraphToFasta {
  input {
    Boolean? arg_json_files
    Boolean? arg_output_file
    Boolean? arg_output_folder
    Boolean? arg_fasta_reference
    String? log_level
    String? log_file
    String? log_async
  }
  command <<<
    graph-to-fasta \
      ~{true="-g" false="" arg_json_files} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-O" false="" arg_output_folder} \
      ~{true="-r" false="" arg_fasta_reference} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_async) then ("--log-async " +  '"' + log_async + '"') else ""}
  >>>
  parameter_meta {
    arg_json_files: "[ --graph-spec ] arg    JSON file(s) describing the graph"
    arg_output_file: "[ --output-file ] arg   Output file name. Will output to stdout if '-' or  neither of output-file or output-folder provided."
    arg_output_folder: "[ --output-folder ] arg Output folder path. paragraph will attempt to  create the folder but not the entire path. Will  output to stdout if neither of output-file or  output-folder provided. If specified, paragraph  will produce one output file for each input file  bearing the same name."
    arg_fasta_reference: "[ --reference ] arg     FASTA with reference genome"
    log_level: "(=info)    Set log level (error, warning, info)."
    log_file: "Log to a file instead of stderr."
    log_async: "(=1)       Enable / disable async logging."
  }
}