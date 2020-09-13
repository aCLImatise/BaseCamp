version 1.0

task CruxTidesearch {
  command <<<
    crux tide_search
  >>>
  output {
    File out_stdout = stdout()
  }
}