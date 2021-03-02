version 1.0

task TICCalculator {
  command <<<
    TICCalculator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}