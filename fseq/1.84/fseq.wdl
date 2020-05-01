version 1.0

task Fseq {
  input {
    String bB
    String cC
    String dD
    String fF
    String lL
    String oO
    Boolean ofOf
    String pP
    String sS
    String tT
    Boolean vV
    String wgWg
  }
  command <<<
    fseq \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-of" false="" ofOf} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(wgWg) then ("-wg " +  '"' + wgWg + '"') else ""}
  >>>
}