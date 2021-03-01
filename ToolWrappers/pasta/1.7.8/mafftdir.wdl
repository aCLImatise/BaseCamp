version 1.0

task Mafftdir {
  command <<<
    mafftdir
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}