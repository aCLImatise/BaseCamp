version 1.0

task DrawGramjar {
  command <<<
    DrawGram_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}