version 1.0

task Seqcount {
  command <<<
    seqcount
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}