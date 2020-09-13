version 1.0

task Doit {
  command <<<
    doit
  >>>
  output {
    File out_stdout = stdout()
  }
}