version 1.0

task Bamintervalcommenthist {
  command <<<
    bamintervalcommenthist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}