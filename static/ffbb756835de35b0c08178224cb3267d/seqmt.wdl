version 1.0

task Seqmt {
  command <<<
    seqmt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}