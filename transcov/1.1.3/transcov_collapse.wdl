version 1.0

task TranscovCollapse {
  input {
    File? output_file
    Boolean? uint_three_two
    String? matrices
  }
  command <<<
    transcov collapse \
      ~{matrices} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (uint_three_two) then "--uint32" else ""}
  >>>
  parameter_meta {
    output_file: ""
    uint_three_two: ""
    matrices: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}