version 1.0

task StPeter {
  input {
    Boolean degenDegen
    String fdrFdr
    Boolean intensitiesIntensities
    String sampleSampleLoad
    String toleranceTolerance
  }
  command <<<
    StPeter \
      ~{true="--degen" false="" degenDegen} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{true="--intensities" false="" intensitiesIntensities} \
      ~{if defined(sampleSampleLoad) then ("--sampleLoad " +  '"' + sampleSampleLoad + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""}
  >>>
}