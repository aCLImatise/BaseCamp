version 1.0

task Blastdbcmd {
  command <<<
    blastdbcmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}