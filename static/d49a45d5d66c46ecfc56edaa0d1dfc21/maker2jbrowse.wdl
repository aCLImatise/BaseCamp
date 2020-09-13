version 1.0

task Maker2jbrowse {
  command <<<
    maker2jbrowse
  >>>
  output {
    File out_stdout = stdout()
  }
}