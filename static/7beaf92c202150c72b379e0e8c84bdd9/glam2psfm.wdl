version 1.0

task Glam2psfm {
  command <<<
    glam2psfm
  >>>
  output {
    File out_stdout = stdout()
  }
}