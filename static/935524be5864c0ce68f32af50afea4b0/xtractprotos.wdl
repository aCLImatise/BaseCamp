version 1.0

task Xtractprotos {
  command <<<
    xtractprotos
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}