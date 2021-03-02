version 1.0

task BigWigToWigpl {
  command <<<
    bigWigToWig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}