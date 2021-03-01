version 1.0

task AugurVersion {
  input {
    String augur
  }
  command <<<
    augur version \
      ~{augur}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}