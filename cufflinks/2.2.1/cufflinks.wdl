version 1.0

task Cufflinks {
  input {
    Boolean oO
    Boolean pP
    Boolean seedSeed
    Boolean gG
    Boolean gG
    Boolean mM
    Boolean bB
    Boolean uU
    Boolean libraryLibraryType
    Boolean libraryLibraryNormMethod
    Boolean mM
    Boolean sS
    Boolean maxMaxMleIterations
    Boolean compatibleCompatibleHitsNorm
    Boolean totalTotalHitsNorm
    Boolean numNumFragCountDraws
    Boolean numNumFragAssignDraws
    Boolean maxMaxFragMultiHits
    Boolean noNoEffectiveLengthCorrection
    Boolean noNoLengthCorrection
    Boolean nN
    Boolean rawRawMappedNorm
    Boolean lL
    Boolean fF
    Boolean jJ
    Boolean iI
    Boolean aA
    Boolean aA
    Boolean minMinFragsPerTransFrag
    Boolean overhangOverhangTolerance
    Boolean maxMaxBundleLength
    Boolean maxMaxBundleFrags
    Boolean minMinIntronLength
    Boolean trimTrim3AvgCovThresh
    Boolean trimTrim3DropOffFrac
    Boolean maxMaxMultiReadFraction
    Boolean overlapOverlapRadius
    Boolean intronIntronOverhangTolerance
    Boolean vV
    Boolean qQ
    Boolean noNoUpdateCheck
    String? hitsHitsSam
  }
  command <<<
    cufflinks \
      ~{hitsHitsSam} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="-G" false="" gG} \
      ~{true="-g" false="" gG} \
      ~{true="-M" false="" mM} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU} \
      ~{true="--library-type" false="" libraryLibraryType} \
      ~{true="--library-norm-method" false="" libraryLibraryNormMethod} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="--max-mle-iterations" false="" maxMaxMleIterations} \
      ~{true="--compatible-hits-norm" false="" compatibleCompatibleHitsNorm} \
      ~{true="--total-hits-norm" false="" totalTotalHitsNorm} \
      ~{true="--num-frag-count-draws" false="" numNumFragCountDraws} \
      ~{true="--num-frag-assign-draws" false="" numNumFragAssignDraws} \
      ~{true="--max-frag-multihits" false="" maxMaxFragMultiHits} \
      ~{true="--no-effective-length-correction" false="" noNoEffectiveLengthCorrection} \
      ~{true="--no-length-correction" false="" noNoLengthCorrection} \
      ~{true="-N" false="" nN} \
      ~{true="--raw-mapped-norm" false="" rawRawMappedNorm} \
      ~{true="-L" false="" lL} \
      ~{true="-F" false="" fF} \
      ~{true="-j" false="" jJ} \
      ~{true="-I" false="" iI} \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="--min-frags-per-transfrag" false="" minMinFragsPerTransFrag} \
      ~{true="--overhang-tolerance" false="" overhangOverhangTolerance} \
      ~{true="--max-bundle-length" false="" maxMaxBundleLength} \
      ~{true="--max-bundle-frags" false="" maxMaxBundleFrags} \
      ~{true="--min-intron-length" false="" minMinIntronLength} \
      ~{true="--trim-3-avgcov-thresh" false="" trimTrim3AvgCovThresh} \
      ~{true="--trim-3-dropoff-frac" false="" trimTrim3DropOffFrac} \
      ~{true="--max-multiread-fraction" false="" maxMaxMultiReadFraction} \
      ~{true="--overlap-radius" false="" overlapOverlapRadius} \
      ~{true="--intron-overhang-tolerance" false="" intronIntronOverhangTolerance} \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="--no-update-check" false="" noNoUpdateCheck}
  >>>
}