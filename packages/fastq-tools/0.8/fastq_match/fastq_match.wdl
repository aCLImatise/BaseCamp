version 1.0

task Fastqmatch {
  command <<<
    fastq_match
  >>>
  output {
    File out_stdout = stdout()
  }
}