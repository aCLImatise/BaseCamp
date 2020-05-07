version 1.0

task BuildFixed {
  input {
    String dD
    String iI
    String pP
    String sS
    Boolean tT
    String vV
  }
  command <<<
    build-fixed \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}