version 1.0

task MetagenomicsOvlAnalyses {
  input {
    String aA
    String bB
    String cC
    String sS
    String bB
    String eE
    Boolean dD
    String gG
    String oO
    String sS
  }
  command <<<
    metagenomics_ovl_analyses \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}