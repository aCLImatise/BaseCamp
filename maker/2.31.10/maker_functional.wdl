version 1.0

task MakerFunctional {
  command <<<
    maker_functional
  >>>
  output {
    File out_stdout = stdout()
  }
}