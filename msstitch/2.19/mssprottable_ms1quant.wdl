version 1.0

task MssprottableMs1quant {
  input {
    String psmPsmTable
    String iI
    String dD
    String oO
    String psmPsmTable
    String protProtCol
  }
  command <<<
    mssprottable ms1quant \
      ~{if defined(psmPsmTable) then ("--psmtable " +  '"' + psmPsmTable + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(psmPsmTable) then ("--psmtable " +  '"' + psmPsmTable + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""}
  >>>
}