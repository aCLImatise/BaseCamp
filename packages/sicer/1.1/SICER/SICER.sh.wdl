version 1.0

task SICERsh {
  command <<<
    SICER_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}