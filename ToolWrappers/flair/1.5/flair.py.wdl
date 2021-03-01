version 1.0

task Flairpy {
  input {
    String mode
  }
  command <<<
    flair_py \
      ~{mode}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: ""
  }
  output {
    File out_stdout = stdout()
  }
}