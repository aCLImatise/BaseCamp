version 1.0

task TreebestSimulate {
  input {
    String dD
    String lL
    String pP
    String mM
    Boolean nN
  }
  command <<<
    treebest simulate \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-n" false="" nN}
  >>>
}