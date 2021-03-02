version 1.0

task FilterOrthologs {
  command <<<
    filter_orthologs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}