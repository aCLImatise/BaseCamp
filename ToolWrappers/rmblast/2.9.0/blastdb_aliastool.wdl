version 1.0

task BlastdbAliastool {
  command <<<
    blastdb_aliastool
  >>>
  output {
    File out_stdout = stdout()
  }
}