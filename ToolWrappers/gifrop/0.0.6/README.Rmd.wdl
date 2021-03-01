version 1.0

task READMERmd {
  command <<<
    README_Rmd
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}