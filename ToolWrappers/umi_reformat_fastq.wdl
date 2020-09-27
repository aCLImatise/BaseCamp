version 1.0

task UmiReformatFastq {
  input {
    File? var_left
    File? var_right
    File? left_out
    File? right_out
    Boolean? verbose
    String? umi_locator
    String? umi_padding
    String? umi_pattern
    File? quality
    Boolean? debug
  }
  command <<<
    umi_reformat_fastq \
      ~{if defined(var_left) then ("--left " +  '"' + var_left + '"') else ""} \
      ~{if defined(var_right) then ("--right " +  '"' + var_right + '"') else ""} \
      ~{if defined(left_out) then ("--left-out " +  '"' + left_out + '"') else ""} \
      ~{if defined(right_out) then ("--right-out " +  '"' + right_out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(umi_locator) then ("--umi-locator " +  '"' + umi_locator + '"') else ""} \
      ~{if defined(umi_padding) then ("--umi-padding " +  '"' + umi_padding + '"') else ""} \
      ~{if defined(umi_pattern) then ("--umi-pattern " +  '"' + umi_pattern + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    var_left: "the input fastq file for r1. (default: None)"
    var_right: "the input fastq file for r2. (default: None)"
    left_out: "the output fastq file for r1 (default: None)"
    right_out: "the output fastq file for r2 (default: None)"
    verbose: "Also include detailed stats for UMI and padding usage\\n(default: False)"
    umi_locator: "Set the UMI locators. If you have multiple, separate\\nthem by comma. e.g. GGG,TCA,ATC (default: GGG,TCA,ATC)"
    umi_padding: "Set the nucleotide (for preventing ligation bias)\\nafter the UMI locators. If you have multiple, separate\\nthem by comma. e.g. A,C,G,T. The quality for this nt\\nis sometimes low, so the default is all possible four\\nnucleotides (default: A,C,G,T,N)"
    umi_pattern: "Set the UMI patterns. (default: None)"
    quality: "Quality (phred quality score) cutoff for UMI.Default\\nis 13, that is UMI with qualities >= 13 willbe kept.\\nThis program assumes the phred quality scoresin the\\nfastq file are using sanger format (default: 13)"
    debug: "Turn on debugging mode (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_left_out = "${in_left_out}"
    File out_right_out = "${in_right_out}"
  }
}