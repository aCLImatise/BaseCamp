version 1.0

task BedWeedOverlapping {
  command <<<
    bedWeedOverlapping
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}