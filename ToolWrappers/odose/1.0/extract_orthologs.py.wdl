version 1.0

task ExtractOrthologspy {
  command <<<
    extract_orthologs_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}