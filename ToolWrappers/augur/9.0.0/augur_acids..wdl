version 1.0

task AugurAcids {
  input {
    String augur
  }
  command <<<
    augur acids_ \
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