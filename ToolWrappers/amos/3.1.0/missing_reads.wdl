version 1.0

task Missingreads {
  command <<<
    missing_reads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}