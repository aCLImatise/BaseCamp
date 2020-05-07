version 1.0

task TradisGeneInsertSites {
  input {
    Boolean oO
    Boolean trim5Trim5
    Boolean trim3Trim3
    Boolean jJ
  }
  command <<<
    tradis_gene_insert_sites \
      ~{true="-o" false="" oO} \
      ~{true="-trim5" false="" trim5Trim5} \
      ~{true="-trim3" false="" trim3Trim3} \
      ~{true="-j" false="" jJ}
  >>>
}