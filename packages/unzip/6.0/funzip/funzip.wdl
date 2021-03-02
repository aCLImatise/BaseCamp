version 1.0

task Funzip {
  command <<<
    funzip
  >>>
  runtime {
    docker: "quay.io/biocontainers/unzip:6.0"
  }
  output {
    File out_stdout = stdout()
  }
}