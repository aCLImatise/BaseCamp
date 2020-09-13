version 1.0

task ExtractFullseq {
  command <<<
    extract_fullseq
  >>>
  output {
    File out_stdout = stdout()
  }
}