version 1.0

task UcscGeneTableToIntervals.py {
  input {
    String regionRegion
    Boolean exonsExons
    Boolean strandStrand
    Boolean noNoBin
  }
  command <<<
    ucsc_gene_table_to_intervals.py \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--exons" false="" exonsExons} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--nobin" false="" noNoBin}
  >>>
}