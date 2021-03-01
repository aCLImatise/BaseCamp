version 1.0

task RunPhipack {
  command <<<
    run_phipack
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}