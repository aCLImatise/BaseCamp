version 1.0

task BlastdbConvert {
  command <<<
    blastdb_convert
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}