version 1.0

task Profit {
  command <<<
    profit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}