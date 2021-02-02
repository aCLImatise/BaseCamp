version 1.0

task Indexextras {
  command <<<
    index_extras
  >>>
  output {
    File out_stdout = stdout()
  }
}