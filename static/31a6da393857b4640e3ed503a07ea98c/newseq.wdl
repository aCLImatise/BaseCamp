version 1.0

task Newseq {
  command <<<
    newseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}