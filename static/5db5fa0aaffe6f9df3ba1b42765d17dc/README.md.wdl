version 1.0

task READMEmd {
  command <<<
    README_md
  >>>
  runtime {
    docker: "quay.io/biocontainers/burst:v1.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}