version 1.0

task Profit {
  command <<<
    _profit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}