version 1.0

task Fastasoftmask {
  command <<<
    fastasoftmask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}