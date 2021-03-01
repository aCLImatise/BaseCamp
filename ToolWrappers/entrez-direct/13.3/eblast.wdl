version 1.0

task Eblast {
  command <<<
    eblast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}