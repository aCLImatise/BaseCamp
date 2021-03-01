version 1.0

task BlastdbAliastool {
  command <<<
    blastdb_aliastool
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}