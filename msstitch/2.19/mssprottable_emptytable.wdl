version 1.0

task MssprottableEmptytable {
  input {
    String iI
    String dD
    String oO
    String protProtCol
  }
  command <<<
    mssprottable emptytable \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(protProtCol) then ("--protcol " +  '"' + protProtCol + '"') else ""}
  >>>
}