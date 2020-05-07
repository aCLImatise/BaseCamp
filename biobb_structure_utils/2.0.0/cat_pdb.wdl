version 1.0

task CatPdb {
  input {
    String cC
    String systemSystem
    String stepStep
    String i1I1
    String i2I2
    String oO
  }
  command <<<
    cat_pdb \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(i1I1) then ("-i1 " +  '"' + i1I1 + '"') else ""} \
      ~{if defined(i2I2) then ("-i2 " +  '"' + i2I2 + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}