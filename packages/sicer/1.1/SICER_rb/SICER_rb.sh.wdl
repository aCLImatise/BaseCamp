version 1.0

task SICERrbsh {
  command <<<
    SICER_rb_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}