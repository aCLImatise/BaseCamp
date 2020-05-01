version 1.0

task Cuffdiff {
  input {
    Boolean oO
    Boolean lL
    Boolean fdrFdr
    Boolean mM
    Boolean cC
    Boolean bB
    Boolean uU
    Boolean pP
    Boolean noNoDiff
    Boolean noNoJsTests
    Boolean tT
    Boolean libraryLibraryType
    Boolean dispersionDispersionMethod
    Boolean libraryLibraryNormMethod
    Boolean mM
    Boolean sS
    Boolean cC
    Boolean maxMaxMleIterations
    Boolean compatibleCompatibleHitsNorm
    Boolean totalTotalHitsNorm
    Boolean vV
    Boolean qQ
    Boolean seedSeed
    Boolean noNoUpdateCheck
    Boolean emitEmitCountTables
    Boolean maxMaxBundleFrags
    Boolean numNumFragCountDraws
    Boolean numNumFragAssignDraws
    Boolean maxMaxFragMultiHits
    Boolean minMinOutlierP
    Boolean minMinRepsForJsTest
    Boolean noNoEffectiveLengthCorrection
    Boolean noNoLengthCorrection
    Boolean nN
    Boolean geometricGeometricNorm
    Boolean rawRawMappedNorm
    Boolean poissonPoissonDispersion
    Boolean readReadSkipFraction
    Boolean noNoReadPairs
    Boolean trimTrimReadLength
    Boolean noNoScvCorrection
  }
  command <<<
    cuffdiff \
      ~{true="-o" false="" oO} \
      ~{true="-L" false="" lL} \
      ~{true="--FDR" false="" fdrFdr} \
      ~{true="-M" false="" mM} \
      ~{true="-C" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU} \
      ~{true="-p" false="" pP} \
      ~{true="--no-diff" false="" noNoDiff} \
      ~{true="--no-js-tests" false="" noNoJsTests} \
      ~{true="-T" false="" tT} \
      ~{true="--library-type" false="" libraryLibraryType} \
      ~{true="--dispersion-method" false="" dispersionDispersionMethod} \
      ~{true="--library-norm-method" false="" libraryLibraryNormMethod} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="--max-mle-iterations" false="" maxMaxMleIterations} \
      ~{true="--compatible-hits-norm" false="" compatibleCompatibleHitsNorm} \
      ~{true="--total-hits-norm" false="" totalTotalHitsNorm} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--no-update-check" false="" noNoUpdateCheck} \
      ~{true="--emit-count-tables" false="" emitEmitCountTables} \
      ~{true="--max-bundle-frags" false="" maxMaxBundleFrags} \
      ~{true="--num-frag-count-draws" false="" numNumFragCountDraws} \
      ~{true="--num-frag-assign-draws" false="" numNumFragAssignDraws} \
      ~{true="--max-frag-multihits" false="" maxMaxFragMultiHits} \
      ~{true="--min-outlier-p" false="" minMinOutlierP} \
      ~{true="--min-reps-for-js-test" false="" minMinRepsForJsTest} \
      ~{true="--no-effective-length-correction" false="" noNoEffectiveLengthCorrection} \
      ~{true="--no-length-correction" false="" noNoLengthCorrection} \
      ~{true="-N" false="" nN} \
      ~{true="--geometric-norm" false="" geometricGeometricNorm} \
      ~{true="--raw-mapped-norm" false="" rawRawMappedNorm} \
      ~{true="--poisson-dispersion" false="" poissonPoissonDispersion} \
      ~{true="--read-skip-fraction" false="" readReadSkipFraction} \
      ~{true="--no-read-pairs" false="" noNoReadPairs} \
      ~{true="--trim-read-length" false="" trimTrimReadLength} \
      ~{true="--no-scv-correction" false="" noNoScvCorrection}
  >>>
}