version 1.0

task Blastdbcp {
  command <<<
    blastdbcp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}