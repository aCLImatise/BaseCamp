version 1.0

task Humann2GenefamiliesGenusLevel {
  input {
    String iI
    String oO
  }
  command <<<
    humann2_genefamilies_genus_level \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}