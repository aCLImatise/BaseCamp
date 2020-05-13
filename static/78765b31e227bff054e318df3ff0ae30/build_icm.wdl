version 1.0

task BuildIcm {
  input {
    String dD
    Boolean fF
    String pP
    Boolean rR
    Boolean tT
    String vV
    String wW
  }
  command <<<
    build-icm \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}