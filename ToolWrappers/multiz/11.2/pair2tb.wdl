version 1.0

task Pair2tb {
  command <<<
    pair2tb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}