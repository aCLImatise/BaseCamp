version 1.0

task Dolmove {
  command <<<
    dolmove
  >>>
  output {
    File out_stdout = stdout()
  }
}