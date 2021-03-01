version 1.0

task Glam2psfm {
  command <<<
    glam2psfm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}