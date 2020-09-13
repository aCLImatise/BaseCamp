version 1.0

task GapPlacerpl {
  command <<<
    gapPlacer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}