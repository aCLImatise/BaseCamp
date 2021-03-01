version 1.0

task AdjustRedunGroupFilepl {
  command <<<
    adjustRedunGroupFile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}