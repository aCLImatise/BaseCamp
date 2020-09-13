version 1.0

task BedWeedOverlapping {
  command <<<
    bedWeedOverlapping
  >>>
  output {
    File out_stdout = stdout()
  }
}