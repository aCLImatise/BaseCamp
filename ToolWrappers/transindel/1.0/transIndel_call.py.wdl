version 1.0

task TransIndelCallpy {
  input {
    Boolean? reference_genome_used
    Boolean? minimal_observation_count
    Boolean? minimal_depth_call
    Boolean? minimal_variant_allele
    Boolean? minimal_indel_length
    Boolean? minimal_mapq_read
    Boolean? limit_analysis_targets
    File? o
    String? i
  }
  command <<<
    transIndel_call_py \
      ~{if (reference_genome_used) then "-r" else ""} \
      ~{if (minimal_observation_count) then "-c" else ""} \
      ~{if (minimal_depth_call) then "-d" else ""} \
      ~{if (minimal_variant_allele) then "-f" else ""} \
      ~{if (minimal_indel_length) then "-l" else ""} \
      ~{if (minimal_mapq_read) then "-m" else ""} \
      ~{if (limit_analysis_targets) then "-t" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    reference_genome_used: ":reference genome used for VCF REF column (required for valid VCF)"
    minimal_observation_count: ":minimal observation count for Indel (default 4)"
    minimal_depth_call: ":minimal depth to call Indel (default 10)"
    minimal_variant_allele: ":minimal variant allele frequency (default 0.1)"
    minimal_indel_length: ":minimal indel length to report (default 10)"
    minimal_mapq_read: ":minimal mapq of read from BAM file to call indel (default 15)"
    limit_analysis_targets: ":Limit analysis to targets listed in the BED-format FILE or a samtools region string"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}