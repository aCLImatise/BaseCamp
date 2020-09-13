version 1.0

task Codcmp {
  command <<<
    codcmp
  >>>
  output {
    File out_stdout = stdout()
  }
}