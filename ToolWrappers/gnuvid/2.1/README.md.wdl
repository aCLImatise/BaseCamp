version 1.0

task READMEmd {
  command <<<
    README_md
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}