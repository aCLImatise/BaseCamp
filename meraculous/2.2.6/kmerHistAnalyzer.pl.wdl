version 1.0

task KmerHistAnalyzerpl {
  command <<<
    kmerHistAnalyzer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}