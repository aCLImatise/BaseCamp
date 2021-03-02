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
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    flag: "Flag to be translated (an integer)"
  }
  output {
    File out_stdout = stdout()
  }
}