version 1.0

task Seqboot {
  command <<<
    seqboot
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}