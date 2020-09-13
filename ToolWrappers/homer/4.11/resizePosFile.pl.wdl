version 1.0

task ResizePosFilepl {
  command <<<
    resizePosFile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}