version 1.0

task ExtractFullseq {
  command <<<
    extract_fullseq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}