version 1.0

task Linx {
  command <<<
    linx
  >>>
  runtime {
    docker: "quay.io/biocontainers/hmftools-linx:1.14--0"
  }
  output {
    File out_stdout = stdout()
  }
}