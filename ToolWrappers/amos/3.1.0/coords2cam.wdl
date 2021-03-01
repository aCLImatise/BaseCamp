version 1.0

task Coords2cam {
  command <<<
    coords2cam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}