version 1.0

task Knot {
  command <<<
    knot
  >>>
  output {
    File out_stdout = stdout()
  }
}