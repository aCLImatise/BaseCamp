version 1.0

task Lcpbat {
  command <<<
    lcp_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}