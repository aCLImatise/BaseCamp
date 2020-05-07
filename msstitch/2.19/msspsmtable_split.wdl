version 1.0

task MsspsmtableSplit {
  input {
    String iI
    String dD
    String oO
    Boolean bioBioSet
    String splitSplitCol
  }
  command <<<
    msspsmtable split \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--bioset" false="" bioBioSet} \
      ~{if defined(splitSplitCol) then ("--splitcol " +  '"' + splitSplitCol + '"') else ""}
  >>>
}