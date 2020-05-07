version 1.0

task ShuffleBed {
  input {
    Boolean exclExcl
    Boolean inclIncl
    Boolean chromChrom
    Boolean seedSeed
    Boolean fF
    Boolean chromChromFirst
    Boolean bedBedPe
    Boolean maxMaxTries
    Boolean noNoOverlapping
    Boolean allowAllowBeyondChromeNd
    String? chr18Chr18Gl000207Random
  }
  command <<<
    shuffleBed \
      ~{chr18Chr18Gl000207Random} \
      ~{true="-excl" false="" exclExcl} \
      ~{true="-incl" false="" inclIncl} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-f" false="" fF} \
      ~{true="-chromFirst" false="" chromChromFirst} \
      ~{true="-bedpe" false="" bedBedPe} \
      ~{true="-maxTries" false="" maxMaxTries} \
      ~{true="-noOverlapping" false="" noNoOverlapping} \
      ~{true="-allowBeyondChromEnd" false="" allowAllowBeyondChromeNd}
  >>>
}