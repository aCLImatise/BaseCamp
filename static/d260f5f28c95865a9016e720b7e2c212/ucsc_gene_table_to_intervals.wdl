version 1.0

task UcscGeneTableToIntervals.py {
  input {
    String? region
    Boolean? exons
    Boolean? strand
    Boolean? no_bin
  }
  command <<<
    ucsc_gene_table_to_intervals.py \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--exons" false="" exons} \
      ~{true="--strand" false="" strand} \
      ~{true="--nobin" false="" no_bin}
  >>>
  parameter_meta {
    region: "Limit to region: one of coding, utr3, utr5, transcribed [default]"
    exons: "Only print intervals overlapping an exon"
    strand: "Print strand after interval"
    no_bin: "file doesn't contain a 'bin' column (use this for pre- hg18 files)"
  }
}