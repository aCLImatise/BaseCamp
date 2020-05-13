version 1.0

task Lastz {
  input {
    Boolean noNoMirror
    Boolean allocateAllocate
    String maskingMasking
    Int identityIdentity
    Int coverageCoverage
    File outputOutput
    String formatFormat
    File rRDotplot
    String progressProgress
    File helpHelp
    String helpHelp
    String helpHelp
  }
  command <<<
    lastz \
      ~{true="--nomirror" false="" noNoMirror} \
      ~{true="--allocate" false="" allocateAllocate} \
      ~{if defined(maskingMasking) then ("--masking " +  '"' + maskingMasking + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(rRDotplot) then ("--rdotplot " +  '"' + rRDotplot + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""} \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""}
  >>>
}