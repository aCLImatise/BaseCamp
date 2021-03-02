version 1.0

task Pmindex {
  command <<<
    pm_index
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}