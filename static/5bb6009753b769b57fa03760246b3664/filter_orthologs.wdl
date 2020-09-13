version 1.0

task FilterOrthologs {
  command <<<
    filter_orthologs
  >>>
  output {
    File out_stdout = stdout()
  }
}