version 1.0

task Fetchseq {
  command <<<
    fetchseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}