version 1.0

task Cactus2halstitchsh {
  command <<<
    cactus2hal_stitch_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}