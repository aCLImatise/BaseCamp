version 1.0

task Rmats2sashimiplot {
  input {
    String tT
    String eE
    String cC
    String l1L1
    String l2L2
    String oO
    String s1S1
    String s2S2
    String b1B1
    String b2B2
  }
  command <<<
    rmats2sashimiplot \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(l1L1) then ("--l1 " +  '"' + l1L1 + '"') else ""} \
      ~{if defined(l2L2) then ("--l2 " +  '"' + l2L2 + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(s1S1) then ("--s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("--s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(b1B1) then ("--b1 " +  '"' + b1B1 + '"') else ""} \
      ~{if defined(b2B2) then ("--b2 " +  '"' + b2B2 + '"') else ""}
  >>>
}