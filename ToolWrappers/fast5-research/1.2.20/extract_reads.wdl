version 1.0

task ExtractReads {
  command <<<
    extract_reads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}