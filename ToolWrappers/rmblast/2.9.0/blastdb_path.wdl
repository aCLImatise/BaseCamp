version 1.0

task BlastdbPath {
  command <<<
    blastdb_path
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}