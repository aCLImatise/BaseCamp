version 1.0

task CactusCalculateMappingQualities {
  command <<<
    cactus_calculateMappingQualities
  >>>
  output {
    File out_stdout = stdout()
  }
}