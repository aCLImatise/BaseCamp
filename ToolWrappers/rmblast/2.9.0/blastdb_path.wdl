version 1.0

task BlastdbPath {
  command <<<
    blastdb_path
  >>>
  output {
    File out_stdout = stdout()
  }
}