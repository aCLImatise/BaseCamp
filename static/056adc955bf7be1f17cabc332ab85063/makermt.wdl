version 1.0

task Makermt {
  command <<<
    makermt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}