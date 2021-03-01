version 1.0

task SplitWigglepl {
  command <<<
    split_wiggle_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}