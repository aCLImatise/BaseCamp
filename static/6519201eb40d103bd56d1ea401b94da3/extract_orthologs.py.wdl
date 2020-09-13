version 1.0

task ExtractOrthologspy {
  command <<<
    extract_orthologs_py
  >>>
  output {
    File out_stdout = stdout()
  }
}