version 1.0

task SimpleGraph {
  input {
    String kmKmEr
    String nNPairs
    String seedSeedLength
    String distDistError
    String maxMaxCost
    File outOut
    String threadsThreads
    Boolean extendExtend
    Boolean noNoExtend
    Boolean scaffoldScaffold
    Boolean noNoScaffold
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String? adjAdj
    String? distDist
  }
  command <<<
    SimpleGraph \
      ~{adjAdj} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(nNPairs) then ("--npairs " +  '"' + nNPairs + '"') else ""} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{if defined(distDistError) then ("--dist-error " +  '"' + distDistError + '"') else ""} \
      ~{if defined(maxMaxCost) then ("--max-cost " +  '"' + maxMaxCost + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--extend" false="" extendExtend} \
      ~{true="--no-extend" false="" noNoExtend} \
      ~{true="--scaffold" false="" scaffoldScaffold} \
      ~{true="--no-scaffold" false="" noNoScaffold} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{distDist}
  >>>
}