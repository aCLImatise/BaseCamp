version 1.0

task MakeBigWigpl {
  command <<<
    makeBigWig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}