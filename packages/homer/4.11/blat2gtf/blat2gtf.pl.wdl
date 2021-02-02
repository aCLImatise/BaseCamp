version 1.0

task Blat2gtfpl {
  command <<<
    blat2gtf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}