version 1.0

task PruneInput {
  input {
    Int dD
    String eE
    Boolean sS
    String oO
  }
  command <<<
    prune input \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}