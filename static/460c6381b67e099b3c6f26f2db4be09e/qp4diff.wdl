version 1.0

task Qp4diff {
  input {
    File pP
    Boolean vV
    Boolean vV
  }
  command <<<
    qp4diff \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}