version 1.0

task AbyssScaffold {
  input {
    String seedSeedLength
    Boolean gridGrid
    Boolean lineLine
    String kmKmEr
    String genomeGenomeSize
    String minMinGap
    String maxMaxGap
    Boolean complexComplex
    Boolean noNoComplex
    Boolean ssSs
    Boolean noNoSs
    File outOut
    File graphGraph
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String? fastFastA
    String? overlapOverlap
    String? distDist
    String? sS
  }
  command <<<
    abyss-scaffold \
      ~{fastFastA} \
      ~{sS} \
      ~{if defined(seedSeedLength) then ("--seed-length " +  '"' + seedSeedLength + '"') else ""} \
      ~{true="--grid" false="" gridGrid} \
      ~{true="--line" false="" lineLine} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(minMinGap) then ("--min-gap " +  '"' + minMinGap + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max-gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{true="--complex" false="" complexComplex} \
      ~{true="--no-complex" false="" noNoComplex} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{overlapOverlap} \
      ~{distDist}
  >>>
}