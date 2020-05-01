version 1.0

task Haphpipe {
  input {
    Boolean readsReads
    Boolean assembleAssemble
    Boolean haplotypeHaplotype
    Boolean descriptionDescription
    Boolean phyloPhylo
    Boolean miscellaneousMiscellaneous
  }
  command <<<
    haphpipe \
      ~{true="-- Reads" false="" readsReads} \
      ~{true="-- Assemble" false="" assembleAssemble} \
      ~{true="-- Haplotype" false="" haplotypeHaplotype} \
      ~{true="-- Description" false="" descriptionDescription} \
      ~{true="-- Phylo" false="" phyloPhylo} \
      ~{true="-- Miscellaneous" false="" miscellaneousMiscellaneous}
  >>>
}