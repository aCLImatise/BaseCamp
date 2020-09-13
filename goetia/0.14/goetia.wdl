version 1.0

task Goetia {
  command <<<
    goetia
  >>>
  output {
    File out_stdout = stdout()
  }
}