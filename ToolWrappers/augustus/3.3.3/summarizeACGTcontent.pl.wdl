version 1.0

task SummarizeACGTcontentpl {
  command <<<
    summarizeACGTcontent_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}