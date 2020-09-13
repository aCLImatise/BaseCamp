version 1.0

task FilterShortReadspy {
  command <<<
    filterShortReads_py
  >>>
  output {
    File out_stdout = stdout()
  }
}