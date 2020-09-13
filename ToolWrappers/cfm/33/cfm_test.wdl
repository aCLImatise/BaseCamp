version 1.0

task Cfmtest {
  command <<<
    cfm_test
  >>>
  output {
    File out_stdout = stdout()
  }
}