version 1.0

task AbyssFiltergraph {
  input {
    String kmKmEr
    Boolean ssSs
    Boolean noNoSs
    String islandIsland
    String tipTip
    String lengthLength
    String maxMaxLength
    Float coverageCoverage
    Float maxMaxCoverage
    Boolean shimShim
    Boolean noNoShim
    String shimShimMaxDegree
    String minMinOverlap
    Boolean assembleAssemble
    Boolean noNoAssemble
    File graphGraph
    File ignoreIgnore
    File removeRemove
    Boolean adjAdj
    Boolean asAsQg
    Boolean dotDot
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean gvGv
    Boolean samSam
    Boolean verboseVerbose
    String? adjAdj
    String? fastFastA
  }
  command <<<
    abyss-filtergraph \
      ~{adjAdj} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{true="--SS" false="" ssSs} \
      ~{true="--no-SS" false="" noNoSs} \
      ~{if defined(islandIsland) then ("--island " +  '"' + islandIsland + '"') else ""} \
      ~{if defined(tipTip) then ("--tip " +  '"' + tipTip + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("--max-coverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{true="--shim" false="" shimShim} \
      ~{true="--no-shim" false="" noNoShim} \
      ~{if defined(shimShimMaxDegree) then ("--shim-max-degree " +  '"' + shimShimMaxDegree + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--assemble" false="" assembleAssemble} \
      ~{true="--no-assemble" false="" noNoAssemble} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--asqg" false="" asAsQg} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--sam" false="" samSam} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{fastFastA}
  >>>
}