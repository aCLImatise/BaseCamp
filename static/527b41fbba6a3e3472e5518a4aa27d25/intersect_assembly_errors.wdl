version 1.0

task IntersectAssemblyErrors {
  input {
    Boolean rR
    Boolean iI
    Boolean tT
    Boolean oO
  }
  command <<<
    intersect_assembly_errors \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-o" false="" oO}
  >>>
}