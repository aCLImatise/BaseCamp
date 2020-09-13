version 1.0

task Blastdbcmd {
  command <<<
    blastdbcmd
  >>>
  output {
    File out_stdout = stdout()
  }
}