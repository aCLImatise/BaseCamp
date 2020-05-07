version 1.0

task AbyssTodot {
  input {
    String kmKmEr
    Boolean adjAdj
    Boolean asAsQg
    Boolean distDist
    Boolean dotDot
    Boolean gvGv
    Boolean dotDotMeanCov
    Boolean gfaGfa
    Boolean gfa1Gfa1
    Boolean gfa2Gfa2
    Boolean samSam
    String estimateEstimate
    String addAddComplements
    Boolean verboseVerbose
  }
  command <<<
    abyss-todot \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{true="--adj" false="" adjAdj} \
      ~{true="--asqg" false="" asAsQg} \
      ~{true="--dist" false="" distDist} \
      ~{true="--dot" false="" dotDot} \
      ~{true="--gv" false="" gvGv} \
      ~{true="--dot-meancov" false="" dotDotMeanCov} \
      ~{true="--gfa" false="" gfaGfa} \
      ~{true="--gfa1" false="" gfa1Gfa1} \
      ~{true="--gfa2" false="" gfa2Gfa2} \
      ~{true="--sam" false="" samSam} \
      ~{if defined(estimateEstimate) then ("--estimate " +  '"' + estimateEstimate + '"') else ""} \
      ~{if defined(addAddComplements) then ("--add-complements " +  '"' + addAddComplements + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}