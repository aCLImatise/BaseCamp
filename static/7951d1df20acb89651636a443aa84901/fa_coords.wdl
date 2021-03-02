version 1.0

task FaCoords {
  command <<<
    fa_coords
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}