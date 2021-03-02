version 1.0

task RunMIRfixsh {
  command <<<
    runMIRfix_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirfix:2.0.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}