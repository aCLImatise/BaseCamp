version 1.0

task QpAdm {
  input {
    File pP
    Boolean vV
    Boolean vV
    Boolean vV
  }
  command <<<
    qpAdm \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}