version 1.0

task SamtoolsMpileup {
  input {
    File? reference_sequence_file
    String? region_pileup_generated
    File? list_positions_format
    Int? cap_mapping_quality
    Int? min_base_quality
    Int? filter_alignment_mq
    Boolean? generate_bcf_output
    Boolean? compress_bcf_output
    Boolean? disable_baq_computation
    String in_one_dot_bam
  }
  command <<<
    samtools mpileup \
      ~{in_one_dot_bam} \
      ~{if defined(reference_sequence_file) then ("-f " +  '"' + reference_sequence_file + '"') else ""} \
      ~{if defined(region_pileup_generated) then ("-r " +  '"' + region_pileup_generated + '"') else ""} \
      ~{if defined(list_positions_format) then ("-l " +  '"' + list_positions_format + '"') else ""} \
      ~{if defined(cap_mapping_quality) then ("-M " +  '"' + cap_mapping_quality + '"') else ""} \
      ~{if defined(min_base_quality) then ("-Q " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(filter_alignment_mq) then ("-q " +  '"' + filter_alignment_mq + '"') else ""} \
      ~{true="-g" false="" generate_bcf_output} \
      ~{true="-u" false="" compress_bcf_output} \
      ~{true="-B" false="" disable_baq_computation}
  >>>
  parameter_meta {
    reference_sequence_file: "reference sequence file [null]"
    region_pileup_generated: "region in which pileup is generated [null]"
    list_positions_format: "list of positions (format: chr pos) [null]"
    cap_mapping_quality: "cap mapping quality at INT [60]"
    min_base_quality: "min base quality [13]"
    filter_alignment_mq: "filter out alignment with MQ smaller than INT [0]"
    generate_bcf_output: "generate BCF output"
    compress_bcf_output: "do not compress BCF output"
    disable_baq_computation: "disable BAQ computation"
    in_one_dot_bam: ""
  }
}