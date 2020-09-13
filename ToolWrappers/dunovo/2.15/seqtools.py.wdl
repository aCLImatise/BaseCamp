version 1.0

task Seqtoolspy {
  command <<<
    seqtools_py
  >>>
  output {
    File out_stdout = stdout()
  }
}