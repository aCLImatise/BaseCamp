version 1.0

task Easypqp {
  command <<<
    easypqp
  >>>
  output {
    File out_stdout = stdout()
  }
}