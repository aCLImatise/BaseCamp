version 1.0

task LoadCorrectedReads {
  input {
    String sS
    String cC
    File lL
    Boolean uU
  }
  command <<<
    loadCorrectedReads \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-u" false="" uU}
  >>>
}