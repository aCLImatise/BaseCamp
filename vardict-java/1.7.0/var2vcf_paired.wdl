version 1.0

task Var2vcfPaired.pl {
  input {
    Boolean? print_this_usage
    Boolean? set_chrosomes_will
    Boolean? set_variants_pass
    Boolean? set_output_only
    Boolean? indicate_output_variants
    Boolean? float_deprecated_minimum
    Boolean? two_somatic_candidates
    Boolean? int_maximum_nonmonomer
    Boolean? int_mismatches_allowed
    Boolean? names_sample_names
    Boolean? float_maximum_default
    Boolean? float_minimum_position
    Boolean? float_minimum_mean_default
    Boolean? float_minimum_mapping_default
    Boolean? integer_minimum_total_depth_default
    Boolean? integer_minimum_variant_depth_default
    Boolean? float_minimum_allele_frequency_default
    Boolean? signalnoise_minimum_signal
    Boolean? float_minimum_allele_frequency_consider
  }
  command <<<
    var2vcf_paired.pl \
      ~{true="-H" false="" print_this_usage} \
      ~{true="-C" false="" set_chrosomes_will} \
      ~{true="-S" false="" set_variants_pass} \
      ~{true="-M" false="" set_output_only} \
      ~{true="-A" false="" indicate_output_variants} \
      ~{true="-D" false="" float_deprecated_minimum} \
      ~{true="-c" false="" two_somatic_candidates} \
      ~{true="-I" false="" int_maximum_nonmonomer} \
      ~{true="-m" false="" int_mismatches_allowed} \
      ~{true="-N" false="" names_sample_names} \
      ~{true="-P" false="" float_maximum_default} \
      ~{true="-p" false="" float_minimum_position} \
      ~{true="-q" false="" float_minimum_mean_default} \
      ~{true="-Q" false="" float_minimum_mapping_default} \
      ~{true="-d" false="" integer_minimum_total_depth_default} \
      ~{true="-v" false="" integer_minimum_variant_depth_default} \
      ~{true="-f" false="" float_minimum_allele_frequency_default} \
      ~{true="-o" false="" signalnoise_minimum_signal} \
      ~{true="-F" false="" float_minimum_allele_frequency_consider}
  >>>
  parameter_meta {
    print_this_usage: "Print this usage."
    set_chrosomes_will: "If set, chrosomes will have names of 1,2,3,...,X,Y, instead of chr1, chr2, ..., chrX, chrY"
    set_variants_pass: "If set, variants that didn't pass filters will not be present in VCF file"
    set_output_only: "If set, output only candidate somatic"
    indicate_output_variants: "Indicate to output all variants at the same position.  By default, only the variant with the highest allele frequency is converted to VCF."
    float_deprecated_minimum: "float (0-1) # Deprecated The minimum allele frequency difference between two samples required in addition to p-value.  Not compitable with -M option.  It's for interest of identifying variants with different AF, not just somatic."
    two_somatic_candidates: "int If two somatic candidates are within {int} bp, they're both filtered.  Default: 0 or no filtering"
    int_maximum_nonmonomer: "int The maximum non-monomer MSI allowed for a HT variant with AF < 0.6.  By default, 12, or any variants with AF < 0.6 in a region with > 12 non-monomer MSI will be considered false positive.  For monomers, that number is 10."
    int_mismatches_allowed: "int The maximum mean mismatches allowed.  Default: 5.25, or if a variant is supported by reads with more than 5.25 mismathes, it'll be considered false positive.  Mismatches don't includes indels in the alignment."
    names_sample_names: "Name(s) The sample name(s).  If only one name is given, the matched will be simply names as \"name-match\".  Two names are given separated by \"|\", such as \"tumor|blood\"."
    float_maximum_default: "float The maximum p-value.  Default to 0.05."
    float_minimum_position: "float The minimum mean position of variants in the read.  Default: 5."
    float_minimum_mean_default: "float The minimum mean base quality.  Default to 22.5 for Illumina sequencing"
    float_minimum_mapping_default: "float The minimum mapping quality.  Default to 0 for Illumina sequencing"
    integer_minimum_total_depth_default: "integer The minimum total depth.  Default to 5"
    integer_minimum_variant_depth_default: "integer The minimum variant depth.  Default to 3"
    float_minimum_allele_frequency_default: "float The minimum allele frequency.  Default to 0.02"
    signalnoise_minimum_signal: "signal/noise The minimum signal to noise, or the ratio of hi/(lo+0.5).  Default to 1.5.  Set it higher for deep sequencing."
    float_minimum_allele_frequency_consider: "float The minimum allele frequency to consider to be homozygous.  Default to 0.2.  Thus frequency > 0.8 (1-0.2) will  be considered homozygous \"1/1\", between 0.5 - (1-0.2) will be \"1/0\", between (-f) - 0.5 will be \"0/1\", below (-f) will be \"0/0\"."
  }
}