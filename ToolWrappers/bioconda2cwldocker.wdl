version 1.0

task Bioconda2cwldocker {
  command <<<
    bioconda2cwldocker
  >>>
  output {
    File out_stdout = stdout()
  }
}