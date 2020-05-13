version 1.0

task Pdb {
  input {
    String cC
    String oO
  }
  command <<<
    pdb \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}