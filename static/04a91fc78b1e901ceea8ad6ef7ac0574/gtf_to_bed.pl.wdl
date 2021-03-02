version 1.0

task GtfToBedpl {
  command <<<
    gtf_to_bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}