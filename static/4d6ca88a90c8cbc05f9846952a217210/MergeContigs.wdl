version 1.0

task MergeContigs {
  input {
    String kmKmEr
    File outOut
    File graphGraph
    Boolean mergedMerged
    Boolean adjAdj
    Boolean dotDot
    Boolean dotDotMeanCov
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean gvGv
    Boolean samSam
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String? fastFastA
    String? overlapOverlap
    File? pathPath
  }
  command <<<
    MergeContigs \
      ~{fastFastA} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--merged" false="" mergedMerged} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--dot-meancov" false="" dotDotMeanCov} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--sam" false="" samSam} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{overlapOverlap} \
      ~{pathPath}
  >>>
}