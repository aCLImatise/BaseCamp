version 1.0

task SummarizeACGTcontentpl {
  command <<<
    summarizeACGTcontent_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}