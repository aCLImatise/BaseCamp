version 1.0

task Qp3Pop {
  input {
    String fF
    File pP
    String sS
    Boolean vV
    Boolean vV
  }
  command <<<
    qp3Pop \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}