version 1.0

task FilterOrthologspy {
  command <<<
    filter_orthologs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}