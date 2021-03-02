version 1.0

task GmtkNGramIndex {
  command <<<
    gmtkNGramIndex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}