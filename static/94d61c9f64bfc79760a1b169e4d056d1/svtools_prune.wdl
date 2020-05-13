version 1.0

task SvtoolsPrune {
  input {
    Int dD
    String eE
    Boolean sS
    String oO
    String? prunePrune
    String? inputInput
  }
  command <<<
    svtools prune \
      ~{prunePrune} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{inputInput}
  >>>
}