version 1.0

task CrimsonStarfusion {
  input {
    String var_input
    String? var_output
  }
  command <<<
    crimson star_fusion \
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