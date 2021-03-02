version 1.0

task Minx {
  command <<<
    minx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}