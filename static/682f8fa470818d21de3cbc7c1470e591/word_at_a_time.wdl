version 1.0

task Wordatatime {
  command <<<
    word_at_a_time
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}