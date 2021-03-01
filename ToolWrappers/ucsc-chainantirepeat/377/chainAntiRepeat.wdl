version 1.0

task ChainAntiRepeat {
  command <<<
    chainAntiRepeat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}