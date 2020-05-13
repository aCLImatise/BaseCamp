version 1.0

task Ecogrep {
  input {
    String dD
    String pP
    String iI
    String rR
    Boolean vV
    File? filenameFilename
  }
  command <<<
    ecogrep \
      ~{filenameFilename} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}