version 1.0

task QpF4ratio {
  input {
    File pP
    Boolean vV
    Boolean vV
  }
  command <<<
    qpF4ratio \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}