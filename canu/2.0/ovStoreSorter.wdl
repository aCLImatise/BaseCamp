version 1.0

task OvStoreSorter {
  input {
    String oO
    String sS
    String cC
    String sS
    String mM
    Boolean deleteDeleteEarly
    Boolean deleteDeleteLate
    Boolean fF
  }
  command <<<
    ovStoreSorter \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-deleteearly" false="" deleteDeleteEarly} \
      ~{true="-deletelate" false="" deleteDeleteLate} \
      ~{true="-f" false="" fF}
  >>>
}