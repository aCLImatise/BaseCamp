version 1.0

task Coderet {
  command <<<
    coderet
  >>>
  output {
    File out_stdout = stdout()
  }
}