version 1.0

task GenePredToFakePsl {
  command <<<
    genePredToFakePsl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}