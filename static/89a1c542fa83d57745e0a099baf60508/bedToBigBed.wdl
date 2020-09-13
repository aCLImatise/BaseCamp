version 1.0

task BedToBigBed {
  command <<<
    bedToBigBed
  >>>
  output {
    File out_stdout = stdout()
  }
}