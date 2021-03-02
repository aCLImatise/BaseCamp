version 1.0

task AxtSwap {
  command <<<
    axtSwap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}