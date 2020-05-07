version 1.0

task PathOverlap {
  input {
    String kmKmEr
    File graphGraph
    File repeatsRepeats
    Boolean overlapOverlap
    Boolean assembleAssemble
    Boolean trimTrim
    Boolean adjAdj
    Boolean asAsQg
    Boolean dotDot
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean gvGv
    Boolean samSam
    Boolean ssSs
    Boolean noNoSs
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String? adjAdj
    File? pathPath
  }
  command <<<
    PathOverlap \
      ~{adjAdj} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(repeatsRepeats) then ("--repeats " +  '"' + repeatsRepeats + '"') else ""} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--assemble" false="" assembleAssemble} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--asqg" false="" asAsQg} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--sam" false="" samSam} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{pathPath}
  >>>
}