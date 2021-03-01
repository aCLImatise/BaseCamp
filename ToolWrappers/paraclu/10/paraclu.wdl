version 1.0

task Paraclu {
  command <<<
    paraclu
  >>>
  runtime {
    docker: "quay.io/biocontainers/paraclu:10--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}