version 1.0

task Fastqqualadj {
  command <<<
    fastq_qualadj
  >>>
  output {
    File out_stdout = stdout()
  }
}