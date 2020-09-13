version 1.0

task Tracer {
  command <<<
    tracer
  >>>
  output {
    File out_stdout = stdout()
  }
}