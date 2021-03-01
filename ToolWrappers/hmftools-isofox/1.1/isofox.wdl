version 1.0

task Isofox {
  command <<<
    isofox
  >>>
  runtime {
    docker: "quay.io/biocontainers/hmftools-isofox:1.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}