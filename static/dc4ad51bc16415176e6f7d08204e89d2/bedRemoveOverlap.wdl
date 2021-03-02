version 1.0

task BedRemoveOverlap {
  command <<<
    bedRemoveOverlap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}