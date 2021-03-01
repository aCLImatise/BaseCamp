version 1.0

task GetSiteConservationpl {
  command <<<
    getSiteConservation_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}