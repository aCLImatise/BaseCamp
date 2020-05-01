version 1.0

task Yapp {
  input {
    String mM
    Boolean vV
    Boolean sS
    Boolean nN
    String oO
    File tT
    String bB
    Boolean vV
    String? orOr
    String? orOr
    String? grammarGrammar
  }
  command <<<
    yapp \
      ~{orOr} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{orOr} \
      ~{grammarGrammar}
  >>>
}