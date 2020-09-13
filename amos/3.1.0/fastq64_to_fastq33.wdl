version 1.0

task Fastq64ToFastq33 {
  command <<<
    fastq64_to_fastq33
  >>>
  output {
    File out_stdout = stdout()
  }
}