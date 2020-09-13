version 1.0

task Biopetfastqsplitter {
  input {
    String? log_level
    File? input_file
    File? output_file
    String fast_q_splitter
  }
  command <<<
    biopet_fastqsplitter \
      ~{fast_q_splitter} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    input_file: "Path to input file"
    output_file: "Path to output file. Multiple output files can be specified."
    fast_q_splitter: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}