version 1.0

task Wdl2dot {
  input {
    File? input_file
    File? output_file
  }
  command <<<
    wdl2dot \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Input wdl file"
    output_file: "Output dot file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}