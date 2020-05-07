version 1.0

task Overlap {
  input {
    String kmKmEr
    String minMin
    Boolean scaffoldScaffold
    Boolean noNoScaffold
    Boolean maskMaskRepeat
    String noNoMergeRepeat
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
    File outOut
    Boolean verboseVerbose
  }
  command <<<
    Overlap \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{true="--scaffold" false="" scaffoldScaffold} \
      ~{true="--no-scaffold" false="" noNoScaffold} \
      ~{true="--mask-repeat" false="" maskMaskRepeat} \
      ~{if defined(noNoMergeRepeat) then ("--no-merge-repeat " +  '"' + noNoMergeRepeat + '"') else ""} \
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
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}