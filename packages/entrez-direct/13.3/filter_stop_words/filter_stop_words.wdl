version 1.0

task Filterstopwords {
  command <<<
    filter_stop_words
  >>>
  output {
    File out_stdout = stdout()
  }
}