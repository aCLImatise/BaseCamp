version 1.0

task FaCoords {
  command <<<
    fa_coords
  >>>
  output {
    File out_stdout = stdout()
  }
}