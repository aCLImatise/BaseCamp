version 1.0

task BigBedNamedItems {
  command <<<
    bigBedNamedItems
  >>>
  output {
    File out_stdout = stdout()
  }
}