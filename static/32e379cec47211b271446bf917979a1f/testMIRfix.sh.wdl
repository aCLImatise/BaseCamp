version 1.0

task TestMIRfixsh {
  command <<<
    testMIRfix_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirfix:2.0.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}