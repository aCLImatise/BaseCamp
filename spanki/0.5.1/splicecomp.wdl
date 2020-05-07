version 1.0

task Splicecomp {
  input {
    String aA
    String bB
    String oO
    String ccCc
  }
  command <<<
    splicecomp \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(ccCc) then ("-cc " +  '"' + ccCc + '"') else ""}
  >>>
}