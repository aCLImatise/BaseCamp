version 1.0

task DistanceEstSsq {
  input {
    String mindMind
    String maxdMaxd
    Boolean frFr
    Boolean rfRf
    String kmKmEr
    String minMinAlign
    String nNPairs
    String seedSeedLength
    String minMinMapq
    File outOut
    Boolean mleMle
    Boolean medianMedian
    Boolean meanMean
    Boolean distDist
    Boolean dotDot
    Boolean gvGv
    Boolean gfaGfa
    Boolean gfa2Gfa2
    String threadsThreads
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String? histHist
    String? pairPair
  }
  command <<<
    DistanceEst-ssq \
      ~{histHist} \
      ~{if defined(mindMind) then ("--mind " +  '"' + mindMind + '"') else ""} \
      ~{if defined(maxdMaxd) then ("--maxd " +  '"' + maxdMaxd + '"') else ""} \
      ~{true="--fr" false="" frFr} \
      ~{true="--rf" false="" rfRf} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinAlign) then ("--min-align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(nNPairs) then ("--npairs " +  '"' + nNPairs + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--mle" false="" mleMle} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--dist" false="" distDist} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{pairPair}
  >>>
}