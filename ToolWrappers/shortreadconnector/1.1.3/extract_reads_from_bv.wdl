version 1.0

task ExtractReadsFromBv {
  command <<<
    extract_reads_from_bv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}