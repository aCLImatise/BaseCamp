version 1.0

task MssprottableProbability {
  input {
    String iI
    String dD
    String oO
    String pepPepTable
    String protProtCol
  }
  command <<<
    mssprottable probability \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pepPepTable) then ("--peptable " +  '"' + pepPepTable + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""}
  >>>
}