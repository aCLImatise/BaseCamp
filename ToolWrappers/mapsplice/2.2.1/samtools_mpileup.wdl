version 1.0

task SamtoolsMpileup {
  input {
    File? reference_sequence_file
    String? region_pileup_generated
    File? list_positions_chr
    Int? cap_mapping_quality
    Int? min_base_quality
    Int? filter_alignment_smaller
    Boolean? generate_bcf_output
    Boolean? compress_bcf_output
    Boolean? disable_baq_computation
    Int in_one_dot_bam
  }
  command <<<
    samtools mpileup \
      ~{in_one_dot_bam} \
      ~{if defined(reference_sequence_file) then ("-f " +  '"' + reference_sequence_file + '"') else ""} \
      ~{if defined(region_pileup_generated) then ("-r " +  '"' + region_pileup_generated + '"') else ""} \
      ~{if defined(list_positions_chr) then ("-l " +  '"' + list_positions_chr + '"') else ""} \
      ~{if defined(cap_mapping_quality) then ("-M " +  '"' + cap_mapping_quality + '"') else ""} \
      ~{if defined(min_base_quality) then ("-Q " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(filter_alignment_smaller) then ("-q " +  '"' + filter_alignment_smaller + '"') else ""} \
      ~{if (generate_bcf_output) then "-g" else ""} \
      ~{if (compress_bcf_output) then "-u" else ""} \
      ~{if (disable_baq_computation) then "-B" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_sequence_file: "reference sequence file [null]"
    region_pileup_generated: "region in which pileup is generated [null]"
    list_positions_chr: "list of positions (format: chr pos) [null]"
    cap_mapping_quality: "cap mapping quality at INT [60]"
    min_base_quality: "min base quality [13]"
    filter_alignment_smaller: "filter out alignment with MQ smaller than INT [0]"
    generate_bcf_output: "generate BCF output"
    compress_bcf_output: "do not compress BCF output"
    disable_baq_computation: "disable BAQ computation"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}