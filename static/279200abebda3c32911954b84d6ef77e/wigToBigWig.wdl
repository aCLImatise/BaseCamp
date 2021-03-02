version 1.0

task WigToBigWig {
  command <<<
    wigToBigWig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}