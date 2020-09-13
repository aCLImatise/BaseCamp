version 1.0

task ParaNodeStop {
  command <<<
    paraNodeStop
  >>>
  output {
    File out_stdout = stdout()
  }
}