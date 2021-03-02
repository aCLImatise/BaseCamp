version 1.0

task ExeSeq {
  command <<<
    exeSeq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}