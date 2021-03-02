version 1.0

task Fastqdump2 {
  command <<<
    fastq_dump_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}