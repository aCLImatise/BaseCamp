version 1.0

task PathConsensus {
  input {
    String kmKmEr
    String distDistError
    File outOut
    File consensusConsensus
    File graphGraph
    Boolean adjAdj
    Boolean asAsQg
    Boolean dotDot
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean gvGv
    Boolean samSam
    String branchesBranches
    String identityIdentity
    Boolean verboseVerbose
    File dbDb
    String libraryLibrary
    String strainStrain
    String speciesSpecies
    String diDiAlignD
    File diDiAlignM
    File diDiAlignP
    String? fastFastA
    String? adjAdj
    File? pathPath
  }
  command <<<
    PathConsensus \
      ~{fastFastA} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(distDistError) then ("--dist-error " +  '"' + distDistError + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(consensusConsensus) then ("--consensus " +  '"' + consensusConsensus + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--asqg" false="" asAsQg} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--sam" false="" samSam} \
      ~{if defined(branchesBranches) then ("--branches " +  '"' + branchesBranches + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(libraryLibrary) then ("--library " +  '"' + libraryLibrary + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(diDiAlignD) then ("--dialign-d " +  '"' + diDiAlignD + '"') else ""} \
      ~{if defined(diDiAlignM) then ("--dialign-m " +  '"' + diDiAlignM + '"') else ""} \
      ~{if defined(diDiAlignP) then ("--dialign-p " +  '"' + diDiAlignP + '"') else ""} \
      ~{adjAdj} \
      ~{pathPath}
  >>>
}