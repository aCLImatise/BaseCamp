version 1.0

task MsspsmtableGenes {
  input {
    String iI
    String dD
    String oO
    String dbfileDbfile
  }
  command <<<
    msspsmtable genes \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""}
  >>>
}