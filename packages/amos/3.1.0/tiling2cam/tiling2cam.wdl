version 1.0

task Tiling2cam {
  command <<<
    tiling2cam
  >>>
  output {
    File out_stdout = stdout()
  }
}