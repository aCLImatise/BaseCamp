version 1.0

task Prefetch2 {
  command <<<
    prefetch_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}