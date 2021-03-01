version 1.0

task BpNexus2nhpl {
  command <<<
    bp_nexus2nh_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}