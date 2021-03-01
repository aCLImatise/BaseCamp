version 1.0

task Fastasort {
  command <<<
    fastasort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}