version 1.0

task Linx {
  command <<<
    linx
  >>>
  runtime {
    docker: "quay.io/biocontainers/hmftools-linx:1.15--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}