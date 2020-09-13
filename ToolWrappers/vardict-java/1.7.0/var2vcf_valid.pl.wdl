version 1.0

task Var2vcfValidpl {
  input {
    String? var_0
    String? var_1
    File? set_variants_pass
    String? amplicon_based_variant
    String? output_variants_same
    Boolean? two_seemingly_high
    Boolean? intthe_maximum_nonmonomer
    Boolean? doublethe_maximum_mean
    Boolean? floatthe_minimum_mean_position
    Boolean? whehter_filter_variants
    Boolean? floatthe_minimum_mean_quality
    Boolean? floatthe_minimum_mapping
    Boolean? integerthe_minimum_total
    Boolean? minimum_high_quality
    Boolean? floatthe_minimum_allele_frequency_default
    Boolean? signalnoisethe_minimum_signal
    Boolean? floatthe_minimum_allele_frequency_consider
    Boolean? stringthe_sample_name
    Boolean? set_print_tag
    Boolean? integerthe_minimum_number
  }
  command <<<
    var2vcf_valid_pl \
      ~{if defined(var_0) then ("-h " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-H " +  '"' + var_1 + '"') else ""} \
      ~{if defined(set_variants_pass) then ("-S " +  '"' + set_variants_pass + '"') else ""} \
      ~{if defined(amplicon_based_variant) then ("-a " +  '"' + amplicon_based_variant + '"') else ""} \
      ~{if defined(output_variants_same) then ("-A " +  '"' + output_variants_same + '"') else ""} \
      ~{if (two_seemingly_high) then "-c" else ""} \
      ~{if (intthe_maximum_nonmonomer) then "-I" else ""} \
      ~{if (doublethe_maximum_mean) then "-m" else ""} \
      ~{if (floatthe_minimum_mean_position) then "-p" else ""} \
      ~{if (whehter_filter_variants) then "-P" else ""} \
      ~{if (floatthe_minimum_mean_quality) then "-q" else ""} \
      ~{if (floatthe_minimum_mapping) then "-Q" else ""} \
      ~{if (integerthe_minimum_total) then "-d" else ""} \
      ~{if (minimum_high_quality) then "-v" else ""} \
      ~{if (floatthe_minimum_allele_frequency_default) then "-f" else ""} \
      ~{if (signalnoisethe_minimum_signal) then "-o" else ""} \
      ~{if (floatthe_minimum_allele_frequency_consider) then "-F" else ""} \
      ~{if (stringthe_sample_name) then "-N" else ""} \
      ~{if (set_print_tag) then "-E" else ""} \
      ~{if (integerthe_minimum_number) then "-T" else ""}
  >>>
  parameter_meta {
    var_0: "this usage."
    var_1: "this usage."
    set_variants_pass: "set, variants that didn't pass filters will not be present in VCF file"
    amplicon_based_variant: "amplicon based variant calling.  Variant not supported by all amplicons will be considered false positve, with filter set to \\\"AMPBIAS\\\"."
    output_variants_same: "to output all variants at the same position.  By default, only the variant with the highest allele frequency is converted to VCF."
    two_seemingly_high: "int\\nIf two seemingly high quality SNV variants are within {int} bp, they're both filtered.  Default: 0, or no filtering"
    intthe_maximum_nonmonomer: "int\\nThe maximum non-monomer MSI allowed for a HT variant with AF < 0.5.  By default, 12, or any variants with AF < 0.5 in a region\\nwith >6 non-monomer MSI will be considered false positive.  For monomers, that number is 13."
    doublethe_maximum_mean: "double\\nThe maximum mean mismatches allowed.  Default: 5.25, or if a variant is supported by reads with more than 5.25 mean mismathes, it'll be considered\\nfalse positive.  Mismatches don't includes indels in the alignment."
    floatthe_minimum_mean_position: "float\\nThe minimum mean position of variants in the read.  Default: 8."
    whehter_filter_variants: "0 or 1\\nWhehter to filter variants with pstd = 0.  Default: 1 or yes.  Set it to 0 for targeted PCR based sequencing, where pstd is expected."
    floatthe_minimum_mean_quality: "float\\nThe minimum mean base quality.  Default to 22.5 for Illumina sequencing"
    floatthe_minimum_mapping: "float\\nThe minimum mapping quality.  Default to 10.0 for Illumina sequencing.  Variants with lower quality (<10) will be kept only if af >= 0.8"
    integerthe_minimum_total: "integer\\nThe minimum total depth.  Default to 3, might consider lower depth if (high quality variant count)*af >= 0.5"
    minimum_high_quality: "integer\\nThe minimum high quality variant depth.  Default to 2.  Would consider lower depth (high quality variant count)*af >= 0.5"
    floatthe_minimum_allele_frequency_default: "float\\nThe minimum allele frequency.  Default to 0.02"
    signalnoisethe_minimum_signal: "signal/noise\\nThe minimum signal to noise, or the ratio of hi/(lo+0.5).  Default to 1.5, that is both 2 variant reads are high quality."
    floatthe_minimum_allele_frequency_consider: "float\\nThe minimum allele frequency to consider to be homozygous.  Default to 0.2.  Thus frequency < 0.2 will\\nbe considered homozygous REF, while frequency > 0.2 will be considered homozygous ALT."
    stringthe_sample_name: "string\\nThe sample name to be used directly."
    set_print_tag: "If set, do not print END tag"
    integerthe_minimum_number: "integer\\nThe minimum number of split reads for SV.  Default: 1.  Change to 0 if you want SV called from discordant pairs only.\\n-b  Path to the *.bed file which is used to generate contigs in the header"
  }
  output {
    File out_stdout = stdout()
  }
}