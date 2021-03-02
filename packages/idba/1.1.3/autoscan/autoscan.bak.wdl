version 1.0

task Autoscanbak {
  command <<<
    autoscan_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}