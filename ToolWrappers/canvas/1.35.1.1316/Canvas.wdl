version 1.0

task Canvas {
  command <<<
    Canvas
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}