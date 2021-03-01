version 1.0

task SCFtoCTG {
  input {
    String input_file
    String output_file
  }
  command <<<
    SCFtoCTG \
      ~{input_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}