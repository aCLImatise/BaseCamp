version 1.0

task Aplanat {
  command <<<
    aplanat
  >>>
  runtime {
    docker: "quay.io/biocontainers/aplanat:0.3.3--pyh5bfb8f1_0"
  }
  output {
    File out_stdout = stdout()
  }
}