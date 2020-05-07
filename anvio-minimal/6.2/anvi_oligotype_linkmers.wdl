version 1.0

task AnviOligotypeLinkmers {
  input {
    String iI
    String oO
  }
  command <<<
    anvi-oligotype-linkmers \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}