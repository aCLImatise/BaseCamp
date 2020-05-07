version 1.0

task ConvertCoords {
  input {
    String mM
    String fF
    String sS
    String dD
    String pP
    String nN
    String iI
  }
  command <<<
    convert_coords \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}