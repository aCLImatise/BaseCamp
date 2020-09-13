version 1.0

task SepdRangerfusion {
  command <<<
    sepdRangerfusion
  >>>
  output {
    File out_stdout = stdout()
  }
}