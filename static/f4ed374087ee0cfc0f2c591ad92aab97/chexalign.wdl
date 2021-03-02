version 1.0

task Chexalign {
  command <<<
    chexalign
  >>>
  runtime {
    docker: "quay.io/biocontainers/chexalign:0.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}