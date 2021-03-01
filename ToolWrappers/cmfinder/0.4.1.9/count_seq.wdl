version 1.0

task CountSeq {
  command <<<
    count_seq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}