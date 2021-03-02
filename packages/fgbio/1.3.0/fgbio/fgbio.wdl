version 1.0

task Fgbio {
  command <<<
    fgbio
  >>>
  runtime {
    docker: "quay.io/biocontainers/fgbio:1.3.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}