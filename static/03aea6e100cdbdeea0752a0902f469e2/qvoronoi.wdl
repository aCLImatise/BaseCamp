version 1.0

task Qvoronoi {
  command <<<
    qvoronoi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}