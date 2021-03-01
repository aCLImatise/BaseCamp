version 1.0

task Pmcollect {
  command <<<
    pm_collect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}