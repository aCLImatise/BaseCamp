version 1.0

task ComparePolishes {
  input {
    String iI
    String cC
    String aA
    String bB
    String pP
    Boolean gff3Gff3
  }
  command <<<
    comparePolishes \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-gff3" false="" gff3Gff3}
  >>>
}