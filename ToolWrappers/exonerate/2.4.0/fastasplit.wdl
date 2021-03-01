version 1.0

task Fastasplit {
  command <<<
    fastasplit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}