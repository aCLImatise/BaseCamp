version 1.0

task Aplanat {
  command <<<
    aplanat
  >>>
  runtime {
    docker: "quay.io/biocontainers/aplanat:0.3.10--pyhfa5458b_0"
  }
  output {
    File out_stdout = stdout()
  }
}