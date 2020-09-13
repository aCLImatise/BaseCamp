version 1.0

task JoinSamsh {
  command <<<
    join_sam_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}