version 1.0

task CsbEmbd {
  input {
    String psfPsfSize
    String outputOutput
    String iterationsIterations
    String outputOutputFrequency
    Boolean verboseVerbose
    String? mapMapFile
  }
  command <<<
    csb-embd \
      ~{mapMapFile} \
      ~{if defined(psfPsfSize) then ("--psf-size " +  '"' + psfPsfSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(outputOutputFrequency) then ("--output-frequency " +  '"' + outputOutputFrequency + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}