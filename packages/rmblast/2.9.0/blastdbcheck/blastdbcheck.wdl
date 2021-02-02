version 1.0

task Blastdbcheck {
  command <<<
    blastdbcheck
  >>>
  output {
    File out_stdout = stdout()
  }
}