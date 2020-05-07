version 1.0

task ShorahShotgun {
  input {
    Float alphaAlpha
    String rR
    Int seedSeed
    Int maxMaxCov
    Float sigmaSigma
    Boolean ignoreIgnoreIndels
    String ofOf
    Int winWinCoverage
    Int windowWindowSize
    Int winWinShifts
    Boolean keepKeepFiles
    String bamBam
    String fastFastA
  }
  command <<<
    shorah shotgun \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--maxcov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(sigmaSigma) then ("--sigma " +  '"' + sigmaSigma + '"') else ""} \
      ~{true="--ignore_indels" false="" ignoreIgnoreIndels} \
      ~{if defined(ofOf) then ("-of " +  '"' + ofOf + '"') else ""} \
      ~{if defined(winWinCoverage) then ("--win_coverage " +  '"' + winWinCoverage + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowsize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(winWinShifts) then ("--winshifts " +  '"' + winWinShifts + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}