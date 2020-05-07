version 1.0

task BgtView {
  input {
    String sS
    String rR
    File bB
    Boolean eE
    Int iI
    Int nN
    File dD
    Boolean mM
    String aA
    String fF
    Boolean bB
    Int lL
    Boolean uU
    Boolean gG
    Boolean cC
    Boolean sS
    Boolean hH
    String tT
  }
  command <<<
    bgt view \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-G" false="" gG} \
      ~{true="-C" false="" cC} \
      ~{true="-S" false="" sS} \
      ~{true="-H" false="" hH} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}