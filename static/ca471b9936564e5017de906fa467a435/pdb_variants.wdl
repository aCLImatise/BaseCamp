version 1.0

task PdbVariants {
  input {
    String cC
    String oO
  }
  command <<<
    pdb_variants \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}