version 1.0

task Tracer {
  command <<<
    tracer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}