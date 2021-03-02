version 1.0

task Bam2fastq {
  command <<<
    bam2fastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}