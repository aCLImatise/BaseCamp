version 1.0

task AlleyoopDatasets {
  input {
    String alley_oop
  }
  command <<<
    alleyoop datasets \
      ~{alley_oop}
  >>>
  parameter_meta {
    alley_oop: ""
  }
  output {
    File out_stdout = stdout()
  }
}