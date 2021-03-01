version 1.0

task Newseq {
  command <<<
    _newseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}