version 1.0

task GetSuperReadPlacementsperl {
  command <<<
    getSuperReadPlacements_perl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}