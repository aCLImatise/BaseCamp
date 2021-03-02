version 1.0

task MakerFunctional {
  command <<<
    maker_functional
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}