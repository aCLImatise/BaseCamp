version 1.0

task BaseTofdll {
  command <<<
    BaseTof_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}