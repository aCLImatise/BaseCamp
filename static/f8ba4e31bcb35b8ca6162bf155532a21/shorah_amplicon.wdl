version 1.0

task ShorahAmplicon {
  input {
    Float alphaAlpha
    String rR
    Int seedSeed
    Int maxMaxCov
    Float sigmaSigma
    Boolean ignoreIgnoreIndels
    String ofOf
    Int winWinCoverage
    Boolean diversityDiversity
    Float minMinOverlap
    String bamBam
    String fastFastA
  }
  command <<<
    shorah amplicon \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--maxcov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(sigmaSigma) then ("--sigma " +  '"' + sigmaSigma + '"') else ""} \
      ~{true="--ignore_indels" false="" ignoreIgnoreIndels} \
      ~{if defined(ofOf) then ("-of " +  '"' + ofOf + '"') else ""} \
      ~{if defined(winWinCoverage) then ("--win_coverage " +  '"' + winWinCoverage + '"') else ""} \
      ~{true="--diversity" false="" diversityDiversity} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}