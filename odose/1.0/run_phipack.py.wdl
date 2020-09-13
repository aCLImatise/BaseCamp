version 1.0

task RunPhipackpy {
  command <<<
    run_phipack_py
  >>>
  output {
    File out_stdout = stdout()
  }
}