version 1.0

task BedGraphToBigWig {
  command <<<
    bedGraphToBigWig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}