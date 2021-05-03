version 1.0

task Seqfu {
  command <<<
    seqfu
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.6--h38613fd_0"
  }
  output {
    File out_stdout = stdout()
  }
}