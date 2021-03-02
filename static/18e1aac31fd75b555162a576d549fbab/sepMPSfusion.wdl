version 1.0

task SepMPSfusion {
  command <<<
    sepMPSfusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}