version 1.0

task RemoveDup {
  input {
    String iI
    String oO
    Boolean sS
    Int rR
    String tT
  }
  command <<<
    removeDup \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}