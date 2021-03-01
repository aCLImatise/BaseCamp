version 1.0

task Blastdbcheck {
  command <<<
    blastdbcheck
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}