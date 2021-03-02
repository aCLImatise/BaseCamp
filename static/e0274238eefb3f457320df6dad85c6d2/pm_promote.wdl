version 1.0

task Pmpromote {
  command <<<
    pm_promote
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}