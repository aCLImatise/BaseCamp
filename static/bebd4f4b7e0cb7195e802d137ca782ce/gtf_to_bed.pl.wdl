version 1.0

task GtfToBedpl {
  command <<<
    gtf_to_bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}