version 1.0

task BbFilter {
  command <<<
    bbFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}