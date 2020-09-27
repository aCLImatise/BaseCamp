version 1.0

task TranscovCollapse {
  input {
    File? output_file
    String? matrices
  }
  command <<<
    transcov collapse \
      ~{matrices} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "--uint32\\n--help                  Show this message and exit.\\n"
    matrices: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}