version 1.0

task SearchTextsh {
  command <<<
    search_text_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}