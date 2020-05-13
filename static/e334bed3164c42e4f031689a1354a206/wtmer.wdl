version 1.0

task Wtmer {
  input {
    String iI
    String oO
    Boolean fF
    Boolean hH
    Int kK
  }
  command <<<
    wtmer \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-H" false="" hH} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}