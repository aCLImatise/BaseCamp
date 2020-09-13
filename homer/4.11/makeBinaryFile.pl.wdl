version 1.0

task MakeBinaryFilepl {
  command <<<
    makeBinaryFile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}