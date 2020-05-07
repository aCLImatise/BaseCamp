version 1.0

task PdbClusterZip {
  input {
    String cC
    String oO
  }
  command <<<
    pdb_cluster_zip \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}