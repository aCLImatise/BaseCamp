version 1.0

task TransIndelCall.py {
  input {
    Boolean? reference_genome_used
    Boolean? minimal_observation_count
    Boolean? minimal_depth_call
    Boolean? minimal_variant_allele
    Boolean? minimal_indel_length
    Boolean? minimal_mapq_call
    Boolean? limit_analysis_targets
    String? i
    String? o
    String? opts
  }
  command <<<
    transIndel_call.py \
      ~{opts} \
      ~{true="-r" false="" reference_genome_used} \
      ~{true="-c" false="" minimal_observation_count} \
      ~{true="-d" false="" minimal_depth_call} \
      ~{true="-f" false="" minimal_variant_allele} \
      ~{true="-l" false="" minimal_indel_length} \
      ~{true="-m" false="" minimal_mapq_call} \
      ~{true="-t" false="" limit_analysis_targets} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    reference_genome_used: ":reference genome used for VCF REF column (required for valid VCF)"
    minimal_observation_count: ":minimal observation count for Indel (default 4)"
    minimal_depth_call: ":minimal depth to call Indel (default 10)"
    minimal_variant_allele: ":minimal variant allele frequency (default 0.1)"
    minimal_indel_length: ":minimal indel length to report (default 10)"
    minimal_mapq_call: ":minimal mapq of read from BAM file to call indel (default 15)"
    limit_analysis_targets: ":Limit analysis to targets listed in the BED-format FILE or a samtools region string"
    i: ""
    o: ""
    opts: ""
  }
}