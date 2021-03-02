version 1.0

task GapPlacerpl {
  command <<<
    gapPlacer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}