version 1.0

task BedToBigBed {
  command <<<
    bedToBigBed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}