version 1.0

task SelectClusterCogspl {
  command <<<
    SelectClusterCogs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}