version 1.0

task Mockinbird {
  command <<<
    mockinbird
  >>>
  output {
    File out_stdout = stdout()
  }
}