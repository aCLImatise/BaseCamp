version 1.0

task Bioconda2cwldocker {
  command <<<
    bioconda2cwldocker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}