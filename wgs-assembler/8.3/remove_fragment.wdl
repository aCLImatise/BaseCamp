version 1.0

task RemoveFragment {
  input {
    String fF
    String iI
    String oO
    String oO
  }
  command <<<
    remove_fragment \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""}
  >>>
}