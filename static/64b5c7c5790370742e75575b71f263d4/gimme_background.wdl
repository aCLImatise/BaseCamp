version 1.0

task GimmeBackground {
  input {
    File iI
    String fF
    Int sS
    String nN
    String gG
    String mM
    File? fileFile
    String? typeType
  }
  command <<<
    gimme background \
      ~{fileFile} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{typeType}
  >>>
}