version 1.0

task Vcfgenosummarize {
  command <<<
    vcfgenosummarize
  >>>
  output {
    File out_stdout = stdout()
  }
}