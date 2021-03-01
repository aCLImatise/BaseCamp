version 1.0

task Asndhuff {
  input {
    Boolean? input_file
    File? output_file_optional
  }
  command <<<
    asndhuff \
      ~{if (input_file) then "-i" else ""} \
      ~{if (output_file_optional) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Input file [File In]"
    output_file_optional: "Output file [File Out]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}