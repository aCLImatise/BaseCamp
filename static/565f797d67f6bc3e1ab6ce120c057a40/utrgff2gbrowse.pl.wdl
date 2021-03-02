version 1.0

task Utrgff2gbrowsepl {
  command <<<
    utrgff2gbrowse_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}