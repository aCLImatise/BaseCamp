version 1.0

task FastxArtifactsFilter {
  input {
    Boolean vV
    Boolean zZ
    String iI
    String oO
  }
  command <<<
    fastx_artifacts_filter \
      ~{true="-v" false="" vV} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}