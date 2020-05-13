version 1.0

task Howdesbt {
  input {
    Boolean kKMersin
    File outOut
    File listList
    File asAsPer
    String kK
    String minMin
    String threadsThreads
    String hashesHashes
    String seedSeed
    String seedSeed
    String modulusModulus
    String bitsBits
    Boolean uncompressedUncompressed
    Boolean rrrRrr
    Boolean roarRoar
    Boolean statsStats
    String bitsBits
    Boolean cullCull
    String cullCull
    String cullCull
    Boolean keepKeepAllNodes
    Boolean noNoCull
    Boolean noNoBuild
    Boolean buildBuild
    File outOutTree
    Boolean simpleSimple
    Boolean howHowDe
    Boolean allAllSome
    Boolean determinedDetermined
    Boolean determinedDetermined
    Boolean uncompressedUncompressed
    Boolean rrrRrr
    Boolean roarRoar
    String thresholdThreshold
    Boolean adjustAdjust
    Boolean sortSort
    Boolean leafLeafOnly
    Boolean distinctDistinctKmErs
    Boolean consistencyConsistencyCheck
    Boolean justJustCountKmErs
    Boolean countCountAllKmErHits
    Boolean statStat
    Boolean timeTime
    File outOut
    String? caagacctatgagtagaacgCaagacctatgagtagaacg
  }
  command <<<
    howdesbt \
      ~{caagacctatgagtagaacgCaagacctatgagtagaacg} \
      ~{true="--kmersin" false="" kKMersin} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(asAsPer) then ("--asper " +  '"' + asAsPer + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(hashesHashes) then ("--hashes " +  '"' + hashesHashes + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(modulusModulus) then ("--modulus " +  '"' + modulusModulus + '"') else ""} \
      ~{if defined(bitsBits) then ("--bits " +  '"' + bitsBits + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressedUncompressed} \
      ~{true="--rrr" false="" rrrRrr} \
      ~{true="--roar" false="" roarRoar} \
      ~{true="--stats" false="" statsStats} \
      ~{if defined(bitsBits) then ("--bits " +  '"' + bitsBits + '"') else ""} \
      ~{true="--cull" false="" cullCull} \
      ~{if defined(cullCull) then ("--cull " +  '"' + cullCull + '"') else ""} \
      ~{if defined(cullCull) then ("--cull " +  '"' + cullCull + '"') else ""} \
      ~{true="--keepallnodes" false="" keepKeepAllNodes} \
      ~{true="--nocull" false="" noNoCull} \
      ~{true="--nobuild" false="" noNoBuild} \
      ~{true="--build" false="" buildBuild} \
      ~{if defined(outOutTree) then ("--outtree " +  '"' + outOutTree + '"') else ""} \
      ~{true="--simple" false="" simpleSimple} \
      ~{true="--howde" false="" howHowDe} \
      ~{true="--allsome" false="" allAllSome} \
      ~{true="--determined" false="" determinedDetermined} \
      ~{true="--determined" false="" determinedDetermined} \
      ~{true="--uncompressed" false="" uncompressedUncompressed} \
      ~{true="--rrr" false="" rrrRrr} \
      ~{true="--roar" false="" roarRoar} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--adjust" false="" adjustAdjust} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--leafonly" false="" leafLeafOnly} \
      ~{true="--distinctkmers" false="" distinctDistinctKmErs} \
      ~{true="--consistencycheck" false="" consistencyConsistencyCheck} \
      ~{true="--justcountkmers" false="" justJustCountKmErs} \
      ~{true="--countallkmerhits" false="" countCountAllKmErHits} \
      ~{true="--stat" false="" statStat} \
      ~{true="--time" false="" timeTime} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}