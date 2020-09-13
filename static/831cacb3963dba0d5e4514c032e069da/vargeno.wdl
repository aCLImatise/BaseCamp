version 1.0

task Vargeno {
  input {
    String option
    String? parameters
  }
  command <<<
    vargeno \
      ~{option} \
      ~{parameters}
  >>>
  parameter_meta {
    option: ""
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}