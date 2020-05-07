version 1.0

task Corset {
  input {
    String dD
    String dD
    Boolean iI
    Int mM
    String gG
    String pP
    Boolean fF
    String nN
    Boolean rR
    Boolean iI
    Int lL
    Int xX
    String? inputInputBamFiles
  }
  command <<<
    corset \
      ~{inputInputBamFiles} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}