version 1.0

task Gth2gtfpl {
  command <<<
    gth2gtf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}