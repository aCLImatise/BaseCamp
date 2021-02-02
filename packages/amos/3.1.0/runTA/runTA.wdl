version 1.0

task RunTA {
  command <<<
    runTA
  >>>
  output {
    File out_stdout = stdout()
  }
}