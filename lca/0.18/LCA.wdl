version 1.0

task LCA {
  input {
    String iI
    String rR
    String oO
    Boolean matMatHigh
    Boolean showShowHitRead
    Boolean noNoBlFilter
    Boolean readReadInput
    Boolean lcaLcaFrac
    Boolean idId
  }
  command <<<
    LCA \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-matHigh" false="" matMatHigh} \
      ~{true="-showHitRead" false="" showShowHitRead} \
      ~{true="-no_bl_filter" false="" noNoBlFilter} \
      ~{true="-readInput" false="" readReadInput} \
      ~{true="-LCAfrac" false="" lcaLcaFrac} \
      ~{true="-id" false="" idId}
  >>>
}