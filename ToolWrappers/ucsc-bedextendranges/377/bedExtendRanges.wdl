version 1.0

task BedExtendRanges {
  command <<<
    bedExtendRanges
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}