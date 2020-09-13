version 1.0

task GmtkNGramIndex {
  command <<<
    gmtkNGramIndex
  >>>
  output {
    File out_stdout = stdout()
  }
}