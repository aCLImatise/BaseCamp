version 1.0

task AlleyoopNumbers {
  input {
    String alley_oop
  }
  command <<<
    alleyoop numbers \
      ~{alley_oop}
  >>>
  parameter_meta {
    alley_oop: ""
  }
  output {
    File out_stdout = stdout()
  }
}