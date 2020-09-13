version 1.0

task Transmute {
  command <<<
    transmute
  >>>
  output {
    File out_stdout = stdout()
  }
}