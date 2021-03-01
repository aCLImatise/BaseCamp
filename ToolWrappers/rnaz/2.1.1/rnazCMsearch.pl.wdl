version 1.0

task RnazCMsearchpl {
  command <<<
    rnazCMsearch_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}