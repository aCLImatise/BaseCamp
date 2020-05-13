version 1.0

task MsspsmtablePercolator {
  input {
    Array[String]+ iI
    String dD
    String oO
    Array[String]+ mzMzIds
    String perPerCo
  }
  command <<<
    msspsmtable percolator \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mzMzIds) then ("--mzids " +  '"' + mzMzIds + '"') else ""} \
      ~{if defined(perPerCo) then ("--perco " +  '"' + perPerCo + '"') else ""}
  >>>
}