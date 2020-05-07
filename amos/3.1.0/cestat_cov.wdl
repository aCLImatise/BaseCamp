version 1.0

task CestatCov {
  input {
    Boolean vV
    Boolean sS
    Boolean rR
    Boolean iI
    Float fF
    String lL
    Boolean sS
    Boolean bB
    String mM
    String dD
    String rR
    String? bankBankPath
  }
  command <<<
    cestat-cov \
      ~{bankBankPath} \
      ~{true="-v" false="" vV} \
      ~{true="-s" false="" sS} \
      ~{true="-R" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}