version 1.0

task MafPercentIdentitypy {
  command <<<
    maf_percent_identity_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}