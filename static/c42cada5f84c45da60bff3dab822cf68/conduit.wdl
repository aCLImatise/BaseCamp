version 1.0

task Conduit {
  command <<<
    conduit
  >>>
  runtime {
    docker: "quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0"
  }
  output {
    File out_stdout = stdout()
  }
}