version 1.0

task Hotspot3d {
  command <<<
    hotspot3d
  >>>
  output {
    File out_stdout = stdout()
  }
}