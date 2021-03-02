version 1.0

task Unzipsfx {
  command <<<
    unzipsfx
  >>>
  runtime {
    docker: "quay.io/biocontainers/unzip:6.0"
  }
  output {
    File out_stdout = stdout()
  }
}