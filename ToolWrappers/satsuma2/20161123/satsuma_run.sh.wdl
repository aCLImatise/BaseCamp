version 1.0

task SatsumaRunsh {
  command <<<
    satsuma_run_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}