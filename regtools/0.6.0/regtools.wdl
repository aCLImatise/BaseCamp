version 1.0

task Regtools {
  command <<<
    regtools
  >>>
  output {
    File out_stdout = stdout()
  }
}