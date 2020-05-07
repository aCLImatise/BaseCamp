version 1.0

task MssprottableProtfdr {
  input {
    String iI
    String dD
    String oO
    String decoyDecoyFn
  }
  command <<<
    mssprottable protfdr \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(decoyDecoyFn) then ("--decoyfn " +  '"' + decoyDecoyFn + '"') else ""}
  >>>
}