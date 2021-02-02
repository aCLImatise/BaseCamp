version 1.0

task Pantools {
  command <<<
    pantools
  >>>
  output {
    File out_stdout = stdout()
  }
}