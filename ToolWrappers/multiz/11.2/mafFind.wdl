version 1.0

task MafFind {
  command <<<
    mafFind
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}