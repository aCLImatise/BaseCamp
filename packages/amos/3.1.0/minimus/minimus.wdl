version 1.0

task Minimus {
  command <<<
    minimus
  >>>
  output {
    File out_stdout = stdout()
  }
}