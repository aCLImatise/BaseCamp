version 1.0

task EBFilter {
  input {
    String? format_mutation_file
    String? the_number_threads
    String? threshold_mapping_quality
    String? threshold_base_quality
    String? ff
    Boolean? l_option
    String? region
    Boolean? debug
    String target_dot_vcf
    String target_dot_bam
    String control_bam_list_dot_txt
    String output_dot_vcf
  }
  command <<<
    EBFilter \
      ~{target_dot_vcf} \
      ~{target_dot_bam} \
      ~{control_bam_list_dot_txt} \
      ~{output_dot_vcf} \
      ~{if defined(format_mutation_file) then ("-f " +  '"' + format_mutation_file + '"') else ""} \
      ~{if defined(the_number_threads) then ("-t " +  '"' + the_number_threads + '"') else ""} \
      ~{if defined(threshold_mapping_quality) then ("-q " +  '"' + threshold_mapping_quality + '"') else ""} \
      ~{if defined(threshold_base_quality) then ("-Q " +  '"' + threshold_base_quality + '"') else ""} \
      ~{if defined(ff) then ("--ff " +  '"' + ff + '"') else ""} \
      ~{true="--loption" false="" l_option} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    format_mutation_file: "the format of mutation file vcf or annovar (tsv) format"
    the_number_threads: "the number of threads"
    threshold_mapping_quality: "threshold for mapping quality for calculating base counts"
    threshold_base_quality: "threshold for base quality for calculating base counts"
    ff: "skip reads with mask bits set"
    l_option: "use samtools mpileup -l option"
    region: "restrict the chromosomal region for mutation. active only if loption is on"
    debug: "keep intermediate files"
    target_dot_vcf: "the path to the mutation file"
    target_dot_bam: "the path to the target bam file"
    control_bam_list_dot_txt: "the list of paths to control bam files"
    output_dot_vcf: "the path to the output"
  }
}