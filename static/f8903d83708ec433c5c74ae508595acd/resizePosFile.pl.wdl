version 1.0

task ResizePosFilepl {
  command <<<
    resizePosFile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}