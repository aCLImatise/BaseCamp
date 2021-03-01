version 1.0

task DrawGramjar {
  command <<<
    DrawGram_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}