version 1.0

task SatsumaRunsh {
  command <<<
    satsuma_run_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}