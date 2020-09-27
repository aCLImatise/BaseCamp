version 1.0

task ExtractFastq {
  command <<<
    extract_fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}