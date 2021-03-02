version 1.0

task Pmprepare {
  command <<<
    pm_prepare
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}