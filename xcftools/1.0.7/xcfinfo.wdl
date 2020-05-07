version 1.0

task Xcfinfo {
  input {
    Boolean vV
    Boolean vV
    Boolean jJ
    String pP
    Boolean zZ
    String zZ
    Boolean uU
  }
  command <<<
    xcfinfo \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-j" false="" jJ} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="-u" false="" uU}
  >>>
}