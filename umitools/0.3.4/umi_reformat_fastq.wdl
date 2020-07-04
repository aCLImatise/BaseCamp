version 1.0

task UmiReformatFastq {
  input {
    String? var_left
    String? var_right
    String? left_out
    String? right_out
    Boolean? verbose
    String? umi_locator
    String? umi_padding
    String? umi_pattern
    String? quality
    Boolean? debug
  }
  command <<<
    umi_reformat_fastq \
      ~{if defined(var_left) then ("--left " +  '"' + var_left + '"') else ""} \
      ~{if defined(var_right) then ("--right " +  '"' + var_right + '"') else ""} \
      ~{if defined(left_out) then ("--left-out " +  '"' + left_out + '"') else ""} \
      ~{if defined(right_out) then ("--right-out " +  '"' + right_out + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(umi_locator) then ("--umi-locator " +  '"' + umi_locator + '"') else ""} \
      ~{if defined(umi_padding) then ("--umi-padding " +  '"' + umi_padding + '"') else ""} \
      ~{if defined(umi_pattern) then ("--umi-pattern " +  '"' + umi_pattern + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    var_left: "the input fastq file for r1. (default: None)"
    var_right: "the input fastq file for r2. (default: None)"
    left_out: "the output fastq file for r1 (default: None)"
    right_out: "the output fastq file for r2 (default: None)"
    verbose: "Also include detailed stats for UMI and padding usage (default: False)"
    umi_locator: "Set the UMI locators. If you have multiple, separate them by comma. e.g. GGG,TCA,ATC (default: GGG,TCA,ATC)"
    umi_padding: "Set the nucleotide (for preventing ligation bias) after the UMI locators. If you have multiple, separate them by comma. e.g. A,C,G,T. The quality for this nt is sometimes low, so the default is all possible four nucleotides (default: A,C,G,T,N)"
    umi_pattern: "Set the UMI patterns. (default: None)"
    quality: "Quality (phred quality score) cutoff for UMI.Default is 13, that is UMI with qualities >= 13 willbe kept. This program assumes the phred quality scoresin the fastq file are using sanger format (default: 13)"
    debug: "Turn on debugging mode (default: False)"
  }
}