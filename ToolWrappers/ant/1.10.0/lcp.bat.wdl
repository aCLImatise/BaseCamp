version 1.0

task Lcpbat {
  command <<<
    lcp_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}