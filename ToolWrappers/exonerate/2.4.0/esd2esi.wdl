version 1.0

task Esd2esi {
  command <<<
    esd2esi
  >>>
  output {
    File out_stdout = stdout()
  }
}