version 1.0

task Quiver {
  command <<<
    quiver
  >>>
  output {
    File out_stdout = stdout()
  }
}