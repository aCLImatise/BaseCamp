version 1.0

task WigToBigWigpl {
  command <<<
    wigToBigWig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}