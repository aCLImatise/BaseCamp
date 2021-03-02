version 1.0

task FcScrubNamespl {
  command <<<
    fc_scrub_names_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}