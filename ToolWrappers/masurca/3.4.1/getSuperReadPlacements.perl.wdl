version 1.0

task GetSuperReadPlacementsperl {
  command <<<
    getSuperReadPlacements_perl
  >>>
  output {
    File out_stdout = stdout()
  }
}