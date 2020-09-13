version 1.0

task CombineHubspl {
  command <<<
    combineHubs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}