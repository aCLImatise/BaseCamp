version 1.0

task Relabelunbugreadssh {
  command <<<
    relabelunbugreads_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}