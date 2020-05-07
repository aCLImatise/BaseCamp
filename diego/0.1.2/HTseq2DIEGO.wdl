version 1.0

task HTseq2DIEGO.pl {
  input {
    File iI
    File oO
    File hH
    String? optionsOptions
  }
  command <<<
    HTseq2DIEGO.pl \
      ~{optionsOptions} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}