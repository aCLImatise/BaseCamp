version 1.0

task AribaFlag {
  input {
    String flag
  }
  command <<<
    ariba flag \
      ~{flag}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flag: "Flag to be translated (an integer)"
  }
  output {
    File out_stdout = stdout()
  }
}