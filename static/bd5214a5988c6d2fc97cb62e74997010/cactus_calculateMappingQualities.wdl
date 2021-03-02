version 1.0

task CactusCalculateMappingQualities {
  command <<<
    cactus_calculateMappingQualities
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}