version 1.0

task VarscanMpileup2cns {
  input {
    Boolean? min_coverage
    Boolean? min_reads_two
    Boolean? min_avg_qual
    Boolean? min_var_freq
    Boolean? min_freq_for_hom
    Boolean? p_value
    String? strand_filter
    Boolean? output_vcf
    Boolean? vcf_sample_list
    Boolean? variants
    String? jar
    String java
    String m_pile_up_two_cns
    String? pile_up
    File? file
  }
  command <<<
    varscan mpileup2cns \
      ~{java} \
      ~{m_pile_up_two_cns} \
      ~{pile_up} \
      ~{file} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-reads2" false="" min_reads_two} \
      ~{true="--min-avg-qual" false="" min_avg_qual} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--min-freq-for-hom" false="" min_freq_for_hom} \
      ~{true="--p-value" false="" p_value} \
      ~{if defined(strand_filter) then ("--strand-filter " +  '"' + strand_filter + '"') else ""} \
      ~{true="--output-vcf" false="" output_vcf} \
      ~{true="--vcf-sample-list" false="" vcf_sample_list} \
      ~{true="--variants" false="" variants} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    min_coverage: "Minimum read depth at a position to make a call [8]"
    min_reads_two: "Minimum supporting reads at a position to call variants [2]"
    min_avg_qual: "Minimum base quality at a position to count a read [15]"
    min_var_freq: "Minimum variant allele frequency threshold [0.01]"
    min_freq_for_hom: "Minimum frequency to call homozygote [0.75]"
    p_value: "Default p-value threshold for calling variants [99e-02]"
    strand_filter: "variants with >90% support on one strand [1]"
    output_vcf: "If set to 1, outputs in VCF format"
    vcf_sample_list: "For VCF output, a list of sample names in order, one per line"
    variants: "Report only variant (SNP/indel) positions [0]"
    jar: ""
    java: ""
    m_pile_up_two_cns: ""
    pile_up: ""
    file: ""
  }
}