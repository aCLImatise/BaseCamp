version 1.0

task VarscanPileup2snp {
  input {
    Boolean? min_coverage
    Boolean? min_reads_two
    Boolean? min_avg_qual
    Boolean? min_var_freq
    Boolean? min_freq_for_hom
    Boolean? p_value
    Boolean? variants
    String? jar
    String java
    String pile_up_two_cns
    String? pile_up
    File? file
  }
  command <<<
    varscan pileup2snp \
      ~{java} \
      ~{pile_up_two_cns} \
      ~{pile_up} \
      ~{file} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-reads2" false="" min_reads_two} \
      ~{true="--min-avg-qual" false="" min_avg_qual} \
      ~{true="--min-var-freq" false="" min_var_freq} \
      ~{true="--min-freq-for-hom" false="" min_freq_for_hom} \
      ~{true="--p-value" false="" p_value} \
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
    variants: "Report only variant (SNP/indel) positions [0]"
    jar: ""
    java: ""
    pile_up_two_cns: ""
    pile_up: ""
    file: ""
  }
}