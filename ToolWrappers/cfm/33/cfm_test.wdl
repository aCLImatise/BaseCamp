version 1.0

task Cfmtest {
  command <<<
    cfm_test
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}