version 1.0

task TangoTransfer {
  input {
    String ignoreIgnoreUncRank
    String orfOrfTaxOut
    String cpusCpus
    String chunksizeChunksize
    String? orfOrfTaxonomy
    String? gffGff
    String? contigContigTaxonomy
  }
  command <<<
    tango transfer \
      ~{orfOrfTaxonomy} \
      ~{if defined(ignoreIgnoreUncRank) then ("--ignore_unc_rank " +  '"' + ignoreIgnoreUncRank + '"') else ""} \
      ~{if defined(orfOrfTaxOut) then ("--orf_tax_out " +  '"' + orfOrfTaxOut + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{gffGff} \
      ~{contigContigTaxonomy}
  >>>
}