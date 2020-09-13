version 1.0

task Peakranger {
  command <<<
    peakranger
  >>>
  output {
    File out_stdout = stdout()
  }
}