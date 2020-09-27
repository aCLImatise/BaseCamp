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
    Int pile_up_two_cns
    String? pile_up
    File? file
  }
  command <<<
    varscan pileup2snp \
      ~{java} \
      ~{pile_up_two_cns} \
      ~{pile_up} \
      ~{file} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (min_reads_two) then "--min-reads2" else ""} \
      ~{if (min_avg_qual) then "--min-avg-qual" else ""} \
      ~{if (min_var_freq) then "--min-var-freq" else ""} \
      ~{if (min_freq_for_hom) then "--min-freq-for-hom" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if (variants) then "--variants" else ""} \
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
  output {
    File out_stdout = stdout()
  }
}