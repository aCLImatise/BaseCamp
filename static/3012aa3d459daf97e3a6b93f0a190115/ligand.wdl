version 1.0

task Ligand {
  input {
    String cC
    String oO
  }
  command <<<
    ligand \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}