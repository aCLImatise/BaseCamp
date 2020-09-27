version 1.0

task Qvoronoi {
  command <<<
    qvoronoi
  >>>
  output {
    File out_stdout = stdout()
  }
}