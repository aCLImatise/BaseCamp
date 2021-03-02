version 1.0

task ExtractOrthologs {
  command <<<
    extract_orthologs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}