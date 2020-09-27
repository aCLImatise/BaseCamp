version 1.0

task PrepareAlign {
  command <<<
    prepareAlign
  >>>
  output {
    File out_stdout = stdout()
  }
}