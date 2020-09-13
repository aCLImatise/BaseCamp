version 1.0

task CheckParamArchivepl {
  command <<<
    checkParamArchive_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}