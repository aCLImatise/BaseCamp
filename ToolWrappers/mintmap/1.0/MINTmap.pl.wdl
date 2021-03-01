version 1.0

task MINTmappl {
  command <<<
    MINTmap_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}