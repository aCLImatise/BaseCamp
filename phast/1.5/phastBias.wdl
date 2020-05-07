version 1.0

task PhastBias {
  input {
    String rhoRho
    Int consConsExpLength
    String consConsTargetCoverage
    String outputOutputMods
    File informativeInformativeFn
    Boolean informativeInformativeOnly
  }
  command <<<
    phastBias \
      ~{if defined(rhoRho) then ("--rho " +  '"' + rhoRho + '"') else ""} \
      ~{if defined(consConsExpLength) then ("--cons-exp-length " +  '"' + consConsExpLength + '"') else ""} \
      ~{if defined(consConsTargetCoverage) then ("--cons-target-coverage " +  '"' + consConsTargetCoverage + '"') else ""} \
      ~{if defined(outputOutputMods) then ("--output-mods " +  '"' + outputOutputMods + '"') else ""} \
      ~{if defined(informativeInformativeFn) then ("--informative-fn " +  '"' + informativeInformativeFn + '"') else ""} \
      ~{true="--informative-only" false="" informativeInformativeOnly}
  >>>
}