version 1.0

task Qseq2fastqpl {
  command <<<
    qseq2fastq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}