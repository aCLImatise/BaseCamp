version 1.0

task RunPhipackpy {
  command <<<
    run_phipack_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}