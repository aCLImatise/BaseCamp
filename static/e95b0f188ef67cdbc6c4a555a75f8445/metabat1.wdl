version 1.0

task Metabat1 {
  input {
    Boolean iI
    Boolean oO
    Boolean aA
    Boolean cvCvExt
    Boolean pP
    String p1P1
    String p2P2
    String minMinProb
    String minMinBinned
    Boolean veryVerySensitive
    Boolean sensitiveSensitive
    Boolean specificSpecific
    Boolean veryVerySpecific
    Boolean superSuperSpecific
    String minMinCorr
    String minMinSamples
    Boolean xX
    String minMinCvsUm
    Boolean sS
    Boolean mM
    String minMinContigByCorr
    Boolean tT
    String minMinShared
    Boolean fuzzyFuzzy
    Boolean lL
    Boolean sS
    Boolean vV
    String saveSaveTnf
    String saveSaveDistance
    Boolean saveSaveCls
    Boolean unbinnedUnbinned
    Boolean noNoBinOut
    Boolean bB
    String pbPb
    String seedSeed
    Boolean keepKeep
    Boolean dD
    Boolean vV
  }
  command <<<
    metabat1 \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="--cvExt" false="" cvCvExt} \
      ~{true="-p" false="" pP} \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("--p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(minMinProb) then ("--minProb " +  '"' + minMinProb + '"') else ""} \
      ~{if defined(minMinBinned) then ("--minBinned " +  '"' + minMinBinned + '"') else ""} \
      ~{true="--verysensitive" false="" veryVerySensitive} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--specific" false="" specificSpecific} \
      ~{true="--veryspecific" false="" veryVerySpecific} \
      ~{true="--superspecific" false="" superSuperSpecific} \
      ~{if defined(minMinCorr) then ("--minCorr " +  '"' + minMinCorr + '"') else ""} \
      ~{if defined(minMinSamples) then ("--minSamples " +  '"' + minMinSamples + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{if defined(minMinCvsUm) then ("--minCVSum " +  '"' + minMinCvsUm + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{if defined(minMinContigByCorr) then ("--minContigByCorr " +  '"' + minMinContigByCorr + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{if defined(minMinShared) then ("--minShared " +  '"' + minMinShared + '"') else ""} \
      ~{true="--fuzzy" false="" fuzzyFuzzy} \
      ~{true="-l" false="" lL} \
      ~{true="-S" false="" sS} \
      ~{true="-V" false="" vV} \
      ~{if defined(saveSaveTnf) then ("--saveTNF " +  '"' + saveSaveTnf + '"') else ""} \
      ~{if defined(saveSaveDistance) then ("--saveDistance " +  '"' + saveSaveDistance + '"') else ""} \
      ~{true="--saveCls" false="" saveSaveCls} \
      ~{true="--unbinned" false="" unbinnedUnbinned} \
      ~{true="--noBinOut" false="" noNoBinOut} \
      ~{true="-B" false="" bB} \
      ~{if defined(pbPb) then ("--pB " +  '"' + pbPb + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--keep" false="" keepKeep} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV}
  >>>
}