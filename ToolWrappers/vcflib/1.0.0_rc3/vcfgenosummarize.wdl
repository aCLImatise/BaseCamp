version 1.0

task Vcfgenosummarize {
  command <<<
    vcfgenosummarize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}