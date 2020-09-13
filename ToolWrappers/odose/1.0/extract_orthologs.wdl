version 1.0

task ExtractOrthologs {
  command <<<
    extract_orthologs
  >>>
  output {
    File out_stdout = stdout()
  }
}