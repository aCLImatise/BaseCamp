version 1.0

task SswTest {
  input {
    String mM
    String xX
    String oO
    String eE
    Boolean pP
    File aA
    Boolean cC
    String fF
    Boolean rR
    Boolean sS
  }
  command <<<
    ssw_test \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS}
  >>>
}