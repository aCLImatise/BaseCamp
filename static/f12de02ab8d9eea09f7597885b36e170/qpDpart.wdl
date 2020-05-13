version 1.0

task QpDpart {
  input {
    String lL
    String hH
    File pP
    Boolean vV
    Boolean vV
  }
  command <<<
    qpDpart \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}