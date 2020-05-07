version 1.0

task PopBubbles {
  input {
    String kmKmEr
    String branchesBranches
    String bubbleBubbleLength
    String identityIdentity
    String coverageCoverage
    Boolean scaffoldScaffold
    Boolean noNoScaffold
    Boolean ssSs
    Boolean noNoSs
    File graphGraph
    Boolean adjAdj
    Boolean asAsQg
    Boolean dotDot
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean gvGv
    Boolean samSam
    Boolean bubbleBubbleGraph
    String threadsThreads
    Boolean verboseVerbose
    String? fastFastA
    String? adjAdj
  }
  command <<<
    PopBubbles \
      ~{fastFastA} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(branchesBranches) then ("--branches " +  '"' + branchesBranches + '"') else ""} \
      ~{if defined(bubbleBubbleLength) then ("--bubble-length " +  '"' + bubbleBubbleLength + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{true="--scaffold" false="" scaffoldScaffold} \
      ~{true="--no-scaffold" false="" noNoScaffold} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--asqg" false="" asAsQg} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--sam" false="" samSam} \
      ~{true="--bubble-graph" false="" bubbleBubbleGraph} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{adjAdj}
  >>>
}