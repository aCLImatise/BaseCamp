version 1.0

task Wiggletools {
  command <<<
    wiggletools
  >>>
  output {
    File out_stdout = stdout()
  }
}