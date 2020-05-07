version 1.0

task Ceqlogo {
  input {
    String iI
    Boolean iI
    Boolean mM
    String nN
    String sS
    Boolean rR
    String pP
    Boolean lL
    String oO
    String fF
    String hH
    String wW
    String tT
    String dD
    String xX
    String yY
    String cC
    String eE
    Boolean sS
    Boolean bB
    Boolean eE
    Boolean oO
    Boolean xX
    Boolean nN
    Boolean yY
  }
  command <<<
    ceqlogo \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{true="-E" false="" eE} \
      ~{true="-O" false="" oO} \
      ~{true="-X" false="" xX} \
      ~{true="-N" false="" nN} \
      ~{true="-Y" false="" yY}
  >>>
}