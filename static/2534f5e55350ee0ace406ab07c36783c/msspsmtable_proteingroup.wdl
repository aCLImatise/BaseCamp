version 1.0

task MsspsmtableProteingroup {
  input {
    String iI
    String dD
    String oO
    String dbfileDbfile
    Boolean unrollUnroll
  }
  command <<<
    msspsmtable proteingroup \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{true="--unroll" false="" unrollUnroll}
  >>>
}