version 1.0

task Aplanat {
  command <<<
    aplanat
  >>>
  runtime {
    docker: "quay.io/biocontainers/aplanat:0.3.11--pyhfa5458b_0"
  }
  output {
    File out_stdout = stdout()
  }
}