version 1.0

task ScallopLr {
  input {
    String iI
    String oO
    String cC
  }
  command <<<
    scallop-lr \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}