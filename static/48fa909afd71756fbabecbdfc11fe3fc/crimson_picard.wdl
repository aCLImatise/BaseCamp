version 1.0

task CrimsonPicard {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson picard \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}