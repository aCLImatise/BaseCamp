version 1.0

task ExtractFastq {
  command <<<
    extract_fastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}