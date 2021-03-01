version 1.0

task Chips {
  command <<<
    chips
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}