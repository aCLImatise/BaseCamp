version 1.0

task SICERrbsh {
  command <<<
    SICER_rb_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}