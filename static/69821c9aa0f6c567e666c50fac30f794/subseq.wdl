version 1.0

task Subseq {
  command <<<
    subseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}