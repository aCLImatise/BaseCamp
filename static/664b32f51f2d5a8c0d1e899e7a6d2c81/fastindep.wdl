version 1.0

task Fastindep {
  command <<<
    fastindep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}