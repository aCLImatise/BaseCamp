version 1.0

task ClassifyMatesPairwise {
  input {
    String gG
    String oO
    String oO
    String trustedTrusted
    String testTest
  }
  command <<<
    classifyMatesPairwise \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(trustedTrusted) then ("-trusted " +  '"' + trustedTrusted + '"') else ""} \
      ~{if defined(testTest) then ("-test " +  '"' + testTest + '"') else ""}
  >>>
}