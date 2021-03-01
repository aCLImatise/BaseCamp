version 1.0

task READMEmd {
  command <<<
    README_md
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}