version 1.0

task Gbrowseconf {
  command <<<
    gbrowse_conf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}