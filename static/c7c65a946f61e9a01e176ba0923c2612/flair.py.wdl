version 1.0

task Flairpy {
  input {
    String mode
  }
  command <<<
    flair_py \
      ~{mode}
  >>>
  parameter_meta {
    mode: ""
  }
  output {
    File out_stdout = stdout()
  }
}