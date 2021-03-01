version 1.0

task Pedmerge {
  input {
    String var_output
  }
  command <<<
    pedmerge \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}