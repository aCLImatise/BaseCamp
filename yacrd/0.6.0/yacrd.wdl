version 1.0

task Yacrd {
  input {
    String coverageCoverage
    String inputInput
    String notNotCoverage
    String onOnDisk
    String onOnDiskBufferSize
    String outputOutput
  }
  command <<<
    yacrd \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(notNotCoverage) then ("--not-coverage " +  '"' + notNotCoverage + '"') else ""} \
      ~{if defined(onOnDisk) then ("--ondisk " +  '"' + onOnDisk + '"') else ""} \
      ~{if defined(onOnDiskBufferSize) then ("--ondisk-buffer-size " +  '"' + onOnDiskBufferSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}