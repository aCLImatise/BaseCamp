version 1.0

task Fastqqualadj {
  command <<<
    fastq_qualadj
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}