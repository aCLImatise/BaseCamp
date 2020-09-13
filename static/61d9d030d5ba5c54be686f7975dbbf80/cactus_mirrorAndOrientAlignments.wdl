version 1.0

task CactusMirrorAndOrientAlignments {
  command <<<
    cactus_mirrorAndOrientAlignments
  >>>
  output {
    File out_stdout = stdout()
  }
}