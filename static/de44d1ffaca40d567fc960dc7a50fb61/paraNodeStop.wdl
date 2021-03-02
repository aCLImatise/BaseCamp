version 1.0

task ParaNodeStop {
  command <<<
    paraNodeStop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}