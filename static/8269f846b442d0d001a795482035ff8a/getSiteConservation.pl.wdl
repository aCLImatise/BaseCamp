version 1.0

task GetSiteConservationpl {
  command <<<
    getSiteConservation_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}