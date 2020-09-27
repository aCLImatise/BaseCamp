version 1.0

task MirrorMappings {
  command <<<
    mirrorMappings
  >>>
  output {
    File out_stdout = stdout()
  }
}