version 1.0

task SICERsh {
  command <<<
    SICER_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}