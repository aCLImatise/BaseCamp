version 1.0

task LoadErates {
  input {
    String oO
    String sS
    File lL
  }
  command <<<
    loadErates \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""}
  >>>
}