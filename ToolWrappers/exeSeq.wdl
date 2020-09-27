version 1.0

task ExeSeq {
  command <<<
    exeSeq
  >>>
  output {
    File out_stdout = stdout()
  }
}