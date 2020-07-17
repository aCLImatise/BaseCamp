version 1.0

task ExpansionHunterDenovoProfile {
  input {
    String? reads
    String? reference
    String? output_prefix
    String? min_unit_len
    String? max_unit_len
    String? min_anchor_mapq
    String? max_irr_mapq
    Boolean? log_reads
  }
  command <<<
    ExpansionHunterDenovo profile \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(min_unit_len) then ("--min-unit-len " +  '"' + min_unit_len + '"') else ""} \
      ~{if defined(max_unit_len) then ("--max-unit-len " +  '"' + max_unit_len + '"') else ""} \
      ~{if defined(min_anchor_mapq) then ("--min-anchor-mapq " +  '"' + min_anchor_mapq + '"') else ""} \
      ~{if defined(max_irr_mapq) then ("--max-irr-mapq " +  '"' + max_irr_mapq + '"') else ""} \
      ~{true="--log-reads" false="" log_reads}
  >>>
  parameter_meta {
    reads: "BAM or CRAM file with aligned reads"
    reference: "FASTA file with reference assembly"
    output_prefix: "Prefix for the output files"
    min_unit_len: "(=2)     Shortest repeat unit to consider"
    max_unit_len: "(=20)    Longest repeat unit to consider"
    min_anchor_mapq: "(=50) Minimum MAPQ of an anchor read"
    max_irr_mapq: "(=40)    Maximum MAPQ of an in-repeat read"
    log_reads: "Log informative reads"
  }
}