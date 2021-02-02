version 1.0

task Qhull {
  command <<<
    qhull
  >>>
  output {
    File out_stdout = stdout()
  }
}