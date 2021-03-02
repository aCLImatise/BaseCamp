version 1.0

task KmerHistAnalyzerpl {
  command <<<
    kmerHistAnalyzer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}