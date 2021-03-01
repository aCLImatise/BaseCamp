version 1.0

task Chips {
  command <<<
    _chips
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}