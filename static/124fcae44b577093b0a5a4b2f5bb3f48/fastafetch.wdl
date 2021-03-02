version 1.0

task Fastafetch {
  command <<<
    fastafetch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}