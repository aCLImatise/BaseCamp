version 1.0

task CreateIGVhtmlpl {
  command <<<
    createIGVhtml_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}