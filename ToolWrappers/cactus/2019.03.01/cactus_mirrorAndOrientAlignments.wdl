version 1.0

task CactusMirrorAndOrientAlignments {
  command <<<
    cactus_mirrorAndOrientAlignments
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}