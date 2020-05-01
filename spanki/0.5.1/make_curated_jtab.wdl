version 1.0

task MakeCuratedJtab {
  input {
    String iI
    String jJList
    String jJTab
    String aA
    String oO
  }
  command <<<
    make_curated_jtab \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJList) then ("-jlist " +  '"' + jJList + '"') else ""} \
      ~{if defined(jJTab) then ("-jtab " +  '"' + jJTab + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}