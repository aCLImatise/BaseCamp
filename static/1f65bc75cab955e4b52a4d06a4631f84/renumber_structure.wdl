version 1.0

task RenumberStructure {
  input {
    String cC
    String systemSystem
    String stepStep
    String iI
    String oO
    String jJ
  }
  command <<<
    renumber_structure \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""}
  >>>
}