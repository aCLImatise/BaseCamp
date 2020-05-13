version 1.0

task Ace2contig {
  input {
    String iI
    String oO
  }
  command <<<
    ace2contig \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}