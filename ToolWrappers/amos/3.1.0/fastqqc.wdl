version 1.0

task Fastqqc {
  command <<<
    fastqqc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}