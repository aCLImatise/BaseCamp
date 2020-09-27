version 1.0

task Coords2cam {
  command <<<
    coords2cam
  >>>
  output {
    File out_stdout = stdout()
  }
}