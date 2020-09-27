version 1.0

task Sgabam2depl {
  command <<<
    sga_bam2de_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}