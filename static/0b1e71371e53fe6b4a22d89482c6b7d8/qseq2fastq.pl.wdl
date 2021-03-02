version 1.0

task Qseq2fastqpl {
  command <<<
    qseq2fastq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}