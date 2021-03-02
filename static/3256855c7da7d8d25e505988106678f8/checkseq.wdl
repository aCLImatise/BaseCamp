version 1.0

task Checkseq {
  command <<<
    checkseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}