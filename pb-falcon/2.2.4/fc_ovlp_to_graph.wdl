version 1.0

task FcOvlpToGraph {
  input {
    String overlapOverlapFile
    Boolean lfcLfc
    Boolean disableDisableChimeRBridgeRemoval
    String ctgCtgPrefix
    Boolean utgUtgData0
  }
  command <<<
    fc_ovlp_to_graph \
      ~{if defined(overlapOverlapFile) then ("--overlap-file " +  '"' + overlapOverlapFile + '"') else ""} \
      ~{true="--lfc" false="" lfcLfc} \
      ~{true="--disable-chimer-bridge-removal" false="" disableDisableChimeRBridgeRemoval} \
      ~{if defined(ctgCtgPrefix) then ("--ctg-prefix " +  '"' + ctgCtgPrefix + '"') else ""} \
      ~{true="- utg_data0" false="" utgUtgData0}
  >>>
}