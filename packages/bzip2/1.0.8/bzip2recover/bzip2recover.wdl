version 1.0

task Bzip2recover {
  command <<<
    bzip2recover
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  output {
    File out_stdout = stdout()
  }
}