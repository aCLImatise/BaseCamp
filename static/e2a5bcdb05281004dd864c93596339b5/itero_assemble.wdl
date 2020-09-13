version 1.0

task IteroAssemble {
  command <<<
    itero assemble
  >>>
  output {
    File out_stdout = stdout()
  }
}