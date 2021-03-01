version 1.0

task Fastadiff {
  command <<<
    fastadiff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}