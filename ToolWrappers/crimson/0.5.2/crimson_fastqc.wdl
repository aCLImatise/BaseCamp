version 1.0

task CrimsonFastqc {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson fastqc \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}