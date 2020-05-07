version 1.0

task Leaff {
  input {
    File fF
    File aA
    Boolean dD
    String iI
    String eE
    String endsEnds
    Boolean cC
    Boolean hH
    Boolean rR
    Boolean uU
    String gG
    String lL
    String nN
    File qQ
    String rR
    String sS
    String sS
    Boolean wW
  }
  command <<<
    leaff \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(endsEnds) then ("-ends " +  '"' + endsEnds + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{true="-H" false="" hH} \
      ~{true="-R" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="-W" false="" wW}
  >>>
}