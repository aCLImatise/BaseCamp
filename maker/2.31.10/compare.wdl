version 1.0

task Compare {
  command <<<
    compare
  >>>
  output {
    File out_stdout = stdout()
  }
}