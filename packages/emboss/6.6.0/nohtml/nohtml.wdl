version 1.0

task Nohtml {
  command <<<
    nohtml
  >>>
  output {
    File out_stdout = stdout()
  }
}