version 1.0

task Pminvert {
  command <<<
    pm_invert
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}