version 1.0

task Bamfilterflags {
  command <<<
    bamfilterflags
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}