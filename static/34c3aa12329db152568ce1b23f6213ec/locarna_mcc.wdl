version 1.0

task LocarnaMcc {
  command <<<
    locarna_mcc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}