version 1.0

task ShorahSnv {
  input {
    Float alphaAlpha
    String rR
    Int seedSeed
    Int maxMaxCov
    Float sigmaSigma
    Boolean ignoreIgnoreIndels
    String ofOf
    Int incrementIncrement
    String bamBam
    String fastFastA
  }
  command <<<
    shorah snv \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--maxcov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(sigmaSigma) then ("--sigma " +  '"' + sigmaSigma + '"') else ""} \
      ~{true="--ignore_indels" false="" ignoreIgnoreIndels} \
      ~{if defined(ofOf) then ("-of " +  '"' + ofOf + '"') else ""} \
      ~{if defined(incrementIncrement) then ("--increment " +  '"' + incrementIncrement + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""}
  >>>
}