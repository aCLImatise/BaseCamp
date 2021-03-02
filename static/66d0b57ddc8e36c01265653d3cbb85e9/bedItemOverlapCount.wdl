version 1.0

task BedItemOverlapCount {
  command <<<
    bedItemOverlapCount
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}