version 1.0

task CheckParamArchivepl {
  command <<<
    checkParamArchive_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}