version 1.0

task EBFilter {
  input {
    String? format_annovar_tsv
    String? threshold_mapping_quality
    String? threshold_base_quality
    String? ff
    Boolean? l_option
    String? region
    Boolean? debug
    Int? t
    String target_dot_vcf
    String target_dot_bam
    String control_bam_list_dot_txt
    String output_dot_vcf
    String format
  }
  command <<<
    EBFilter \
      ~{target_dot_vcf} \
      ~{target_dot_bam} \
      ~{control_bam_list_dot_txt} \
      ~{output_dot_vcf} \
      ~{format} \
      ~{if defined(format_annovar_tsv) then ("-f " +  '"' + format_annovar_tsv + '"') else ""} \
      ~{if defined(threshold_mapping_quality) then ("-q " +  '"' + threshold_mapping_quality + '"') else ""} \
      ~{if defined(threshold_base_quality) then ("-Q " +  '"' + threshold_base_quality + '"') else ""} \
      ~{if defined(ff) then ("--ff " +  '"' + ff + '"') else ""} \
      ~{if (l_option) then "--loption" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    format_annovar_tsv: "the format of mutation file vcf or annovar (tsv)"
    threshold_mapping_quality: "threshold for mapping quality for calculating base\\ncounts"
    threshold_base_quality: "threshold for base quality for calculating base counts"
    ff: "skip reads with mask bits set"
    l_option: "use samtools mpileup -l option"
    region: "restrict the chromosomal region for mutation. active\\nonly if loption is on"
    debug: "keep intermediate files"
    t: ""
    target_dot_vcf: "the path to the mutation file"
    target_dot_bam: "the path to the target bam file"
    control_bam_list_dot_txt: "the list of paths to control bam files"
    output_dot_vcf: "the path to the output"
    format: "-t thread_num         the number of threads"
  }
  output {
    File out_stdout = stdout()
  }
}