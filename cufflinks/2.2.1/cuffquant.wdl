version 1.0

task Cuffquant {
  input {
    Boolean oO
    Boolean mM
    Boolean bB
    Boolean uU
    Boolean pP
    Boolean libraryLibraryType
    Boolean mM
    Boolean sS
    Boolean cC
    Boolean maxMaxMleIterations
    Boolean vV
    Boolean qQ
    Boolean seedSeed
    Boolean noNoUpdateCheck
    Boolean maxMaxBundleFrags
    Boolean maxMaxFragMultiHits
    Boolean noNoEffectiveLengthCorrection
    Boolean noNoLengthCorrection
    Boolean readReadSkipFraction
    Boolean noNoReadPairs
    Boolean trimTrimReadLength
    Boolean noNoScvCorrection
  }
  command <<<
    cuffquant \
      ~{true="-o" false="" oO} \
      ~{true="-M" false="" mM} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU} \
      ~{true="-p" false="" pP} \
      ~{true="--library-type" false="" libraryLibraryType} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="--max-mle-iterations" false="" maxMaxMleIterations} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--no-update-check" false="" noNoUpdateCheck} \
      ~{true="--max-bundle-frags" false="" maxMaxBundleFrags} \
      ~{true="--max-frag-multihits" false="" maxMaxFragMultiHits} \
      ~{true="--no-effective-length-correction" false="" noNoEffectiveLengthCorrection} \
      ~{true="--no-length-correction" false="" noNoLengthCorrection} \
      ~{true="--read-skip-fraction" false="" readReadSkipFraction} \
      ~{true="--no-read-pairs" false="" noNoReadPairs} \
      ~{true="--trim-read-length" false="" trimTrimReadLength} \
      ~{true="--no-scv-correction" false="" noNoScvCorrection}
  >>>
}