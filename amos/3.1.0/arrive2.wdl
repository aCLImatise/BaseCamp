version 1.0

task Arrive2 {
  input {
    String dD
    String lL
    String mM
    String rR
    Boolean sS
    Boolean xX
    Boolean zZ
    String? loLo
    String? hiHi
    String? delDel
  }
  command <<<
    arrive2 \
      ~{loLo} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-x" false="" xX} \
      ~{true="-z" false="" zZ} \
      ~{hiHi} \
      ~{delDel}
  >>>
}