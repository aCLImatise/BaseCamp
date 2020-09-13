version 1.0

task Wordatatime {
  command <<<
    word_at_a_time
  >>>
  output {
    File out_stdout = stdout()
  }
}