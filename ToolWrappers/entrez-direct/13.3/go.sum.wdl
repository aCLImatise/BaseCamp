version 1.0

task Gosum {
  command <<<
    go_sum
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}