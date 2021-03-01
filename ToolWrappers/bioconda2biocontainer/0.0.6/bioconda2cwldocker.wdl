version 1.0

task Bioconda2cwldocker {
  command <<<
    bioconda2cwldocker
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}