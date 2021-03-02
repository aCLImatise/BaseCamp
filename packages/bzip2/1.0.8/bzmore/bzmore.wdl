version 1.0

task Bzmore {
  command <<<
    bzmore
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  output {
    File out_stdout = stdout()
  }
}