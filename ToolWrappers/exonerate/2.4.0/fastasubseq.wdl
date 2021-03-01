version 1.0

task Fastasubseq {
  command <<<
    fastasubseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}