version 1.0

task Downloadsequence {
  command <<<
    download_sequence
  >>>
  output {
    File out_stdout = stdout()
  }
}