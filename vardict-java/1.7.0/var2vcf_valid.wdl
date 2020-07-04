version 1.0

task Var2vcfValid.pl {
  input {
    String? var_0
    String? var_1
    String? set_variants_pass
    String? amplicon_based_calling
    String? output_variants_variant
    Boolean? two_seemingly_high
    Boolean? int_maximum_nonmonomer
    Boolean? double_maximum_mean
    Boolean? float_minimum_position
    Boolean? whehter_filter_variants
    Boolean? float_minimum_default
    Boolean? float_mapping_quality
    Boolean? integer_minimum_depth_default
    Boolean? integer_minimum_quality_default
    Boolean? float_minimum_allele_frequency_default
    Boolean? signalnoise_minimum_signal
    Boolean? float_minimum_allele_frequency_consider
    Boolean? string_name_used
    Boolean? set_print_tag
    Boolean? integer_minimum_number
  }
  command <<<
    var2vcf_valid.pl \
      ~{if defined(var_0) then ("-h " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-H " +  '"' + var_1 + '"') else ""} \
      ~{if defined(set_variants_pass) then ("-S " +  '"' + set_variants_pass + '"') else ""} \
      ~{if defined(amplicon_based_calling) then ("-a " +  '"' + amplicon_based_calling + '"') else ""} \
      ~{if defined(output_variants_variant) then ("-A " +  '"' + output_variants_variant + '"') else ""} \
      ~{true="-c" false="" two_seemingly_high} \
      ~{true="-I" false="" int_maximum_nonmonomer} \
      ~{true="-m" false="" double_maximum_mean} \
      ~{true="-p" false="" float_minimum_position} \
      ~{true="-P" false="" whehter_filter_variants} \
      ~{true="-q" false="" float_minimum_default} \
      ~{true="-Q" false="" float_mapping_quality} \
      ~{true="-d" false="" integer_minimum_depth_default} \
      ~{true="-v" false="" integer_minimum_quality_default} \
      ~{true="-f" false="" float_minimum_allele_frequency_default} \
      ~{true="-o" false="" signalnoise_minimum_signal} \
      ~{true="-F" false="" float_minimum_allele_frequency_consider} \
      ~{true="-N" false="" string_name_used} \
      ~{true="-E" false="" set_print_tag} \
      ~{true="-T" false="" integer_minimum_number}
  >>>
  parameter_meta {
    var_0: "this usage."
    var_1: "this usage."
    set_variants_pass: "set, variants that didn't pass filters will not be present in VCF file"
    amplicon_based_calling: "amplicon based variant calling.  Variant not supported by all amplicons will be considered false positve, with filter set to \"AMPBIAS\"."
    output_variants_variant: "to output all variants at the same position.  By default, only the variant with the highest allele frequency is converted to VCF."
    two_seemingly_high: "int If two seemingly high quality SNV variants are within {int} bp, they're both filtered.  Default: 0, or no filtering"
    int_maximum_nonmonomer: "int The maximum non-monomer MSI allowed for a HT variant with AF < 0.5.  By default, 12, or any variants with AF < 0.5 in a region with >6 non-monomer MSI will be considered false positive.  For monomers, that number is 13."
    double_maximum_mean: "double The maximum mean mismatches allowed.  Default: 5.25, or if a variant is supported by reads with more than 5.25 mean mismathes, it'll be considered false positive.  Mismatches don't includes indels in the alignment."
    float_minimum_position: "float The minimum mean position of variants in the read.  Default: 8."
    whehter_filter_variants: "0 or 1 Whehter to filter variants with pstd = 0.  Default: 1 or yes.  Set it to 0 for targeted PCR based sequencing, where pstd is expected."
    float_minimum_default: "float The minimum mean base quality.  Default to 22.5 for Illumina sequencing"
    float_mapping_quality: "float The minimum mapping quality.  Default to 10.0 for Illumina sequencing.  Variants with lower quality (<10) will be kept only if af >= 0.8"
    integer_minimum_depth_default: "integer The minimum total depth.  Default to 3, might consider lower depth if (high quality variant count)*af >= 0.5"
    integer_minimum_quality_default: "integer The minimum high quality variant depth.  Default to 2.  Would consider lower depth (high quality variant count)*af >= 0.5"
    float_minimum_allele_frequency_default: "float The minimum allele frequency.  Default to 0.02"
    signalnoise_minimum_signal: "signal/noise The minimum signal to noise, or the ratio of hi/(lo+0.5).  Default to 1.5, that is both 2 variant reads are high quality."
    float_minimum_allele_frequency_consider: "float The minimum allele frequency to consider to be homozygous.  Default to 0.2.  Thus frequency < 0.2 will  be considered homozygous REF, while frequency > 0.2 will be considered homozygous ALT."
    string_name_used: "string The sample name to be used directly."
    set_print_tag: "If set, do not print END tag"
    integer_minimum_number: "integer The minimum number of split reads for SV.  Default: 1.  Change to 0 if you want SV called from discordant pairs only. -b  Path to the *.bed file which is used to generate contigs in the header"
  }
}