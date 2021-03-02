version 1.0

task Bpipe {
  command <<<
    bpipe
  >>>
  runtime {
    docker: "quay.io/biocontainers/bpipe:0.9.10--0"
  }
  output {
    File out_stdout = stdout()
  }
}