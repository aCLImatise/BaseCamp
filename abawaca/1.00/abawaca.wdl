version 1.0

task Abawaca {
  command <<<
    abawaca
  >>>
  output {
    File out_stdout = stdout()
  }
}