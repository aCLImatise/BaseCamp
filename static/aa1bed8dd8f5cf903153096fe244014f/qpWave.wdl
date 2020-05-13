version 1.0

task QpWave {
  input {
    File pP
    Boolean vV
    Boolean vV
  }
  command <<<
    qpWave \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV}
  >>>
}