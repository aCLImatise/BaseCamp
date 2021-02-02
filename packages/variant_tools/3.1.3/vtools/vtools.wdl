version 1.0

task Vtools {
  command <<<
    vtools
  >>>
  output {
    File out_stdout = stdout()
  }
}