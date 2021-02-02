version 1.0

task Metaeuk {
  command <<<
    metaeuk
  >>>
  output {
    File out_stdout = stdout()
  }
}