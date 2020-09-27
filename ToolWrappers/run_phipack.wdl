version 1.0

task RunPhipack {
  command <<<
    run_phipack
  >>>
  output {
    File out_stdout = stdout()
  }
}