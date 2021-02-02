version 1.0

task FcScrubNamespl {
  command <<<
    fc_scrub_names_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}