version 1.0

task PpaniniCluster2genes {
  input {
    String iI
    String oO
    Boolean jsonJson
  }
  command <<<
    ppanini_cluster2genes \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--json" false="" jsonJson}
  >>>
}