version 1.0

task GraphAligner {
  command <<<
    GraphAligner
  >>>
  output {
    File out_stdout = stdout()
  }
}