version 1.0

task WdlParse {
  command <<<
    wdl parse
  >>>
  output {
    File out_stdout = stdout()
  }
}