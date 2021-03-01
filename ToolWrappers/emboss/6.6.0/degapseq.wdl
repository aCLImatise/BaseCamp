version 1.0

task Degapseq {
  command <<<
    degapseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}