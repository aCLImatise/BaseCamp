version 1.0

task CrimsonVep {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson vep \
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