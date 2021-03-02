version 1.0

task SepdRangerfusion {
  command <<<
    sepdRangerfusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}