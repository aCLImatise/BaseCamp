version 1.0

task HmmView {
  input {
    String kK
    String iI
    String tT
    String cC
    String rR
    Boolean xX
  }
  command <<<
    hmm_view \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-x" false="" xX}
  >>>
}