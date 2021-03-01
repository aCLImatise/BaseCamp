version 1.0

task Filterplbak {
  command <<<
    filter_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}