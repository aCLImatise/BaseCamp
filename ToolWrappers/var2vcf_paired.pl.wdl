version 1.0

task Var2vcfPairedpl {
  input {
    Boolean? print_this_usage
    Boolean? set_chrosomes_will
    Boolean? set_variants_pass
    Boolean? set_output_only
    Boolean? indicate_output_variants
    Boolean? float_deprecatedthe_minimum
    Boolean? two_somatic_candidates
    Boolean? intthe_maximum_nonmonomer
    Boolean? intthe_maximum_mean
    Boolean? namesthe_sample_names
    Boolean? floatthe_maximum_pvalue
    Boolean? floatthe_minimum_mean_position
    Boolean? floatthe_minimum_mean_quality
    Boolean? floatthe_minimum_mapping
    Boolean? integerthe_minimum_total
    Boolean? integerthe_minimum_variant
    Boolean? floatthe_minimum_allele_frequency_default
    Boolean? signalnoisethe_minimum_signal
    Boolean? floatthe_minimum_allele_frequency_consider
  }
  command <<<
    var2vcf_paired_pl \
      ~{if (print_this_usage) then "-H" else ""} \
      ~{if (set_chrosomes_will) then "-C" else ""} \
      ~{if (set_variants_pass) then "-S" else ""} \
      ~{if (set_output_only) then "-M" else ""} \
      ~{if (indicate_output_variants) then "-A" else ""} \
      ~{if (float_deprecatedthe_minimum) then "-D" else ""} \
      ~{if (two_somatic_candidates) then "-c" else ""} \
      ~{if (intthe_maximum_nonmonomer) then "-I" else ""} \
      ~{if (intthe_maximum_mean) then "-m" else ""} \
      ~{if (namesthe_sample_names) then "-N" else ""} \
      ~{if (floatthe_maximum_pvalue) then "-P" else ""} \
      ~{if (floatthe_minimum_mean_position) then "-p" else ""} \
      ~{if (floatthe_minimum_mean_quality) then "-q" else ""} \
      ~{if (floatthe_minimum_mapping) then "-Q" else ""} \
      ~{if (integerthe_minimum_total) then "-d" else ""} \
      ~{if (integerthe_minimum_variant) then "-v" else ""} \
      ~{if (floatthe_minimum_allele_frequency_default) then "-f" else ""} \
      ~{if (signalnoisethe_minimum_signal) then "-o" else ""} \
      ~{if (floatthe_minimum_allele_frequency_consider) then "-F" else ""}
  >>>
  parameter_meta {
    print_this_usage: "Print this usage."
    set_chrosomes_will: "If set, chrosomes will have names of 1,2,3,...,X,Y, instead of chr1, chr2, ..., chrX, chrY"
    set_variants_pass: "If set, variants that didn't pass filters will not be present in VCF file"
    set_output_only: "If set, output only candidate somatic"
    indicate_output_variants: "Indicate to output all variants at the same position.  By default, only the variant with the highest allele frequency is converted to VCF."
    float_deprecatedthe_minimum: "float (0-1) # Deprecated\\nThe minimum allele frequency difference between two samples required in addition to p-value.  Not compitable\\nwith -M option.  It's for interest of identifying variants with different AF, not just somatic."
    two_somatic_candidates: "int\\nIf two somatic candidates are within {int} bp, they're both filtered.  Default: 0 or no filtering"
    intthe_maximum_nonmonomer: "int\\nThe maximum non-monomer MSI allowed for a HT variant with AF < 0.6.  By default, 12, or any variants with AF < 0.6 in a region\\nwith > 12 non-monomer MSI will be considered false positive.  For monomers, that number is 10."
    intthe_maximum_mean: "int\\nThe maximum mean mismatches allowed.  Default: 5.25, or if a variant is supported by reads with more than 5.25 mismathes, it'll be considered\\nfalse positive.  Mismatches don't includes indels in the alignment."
    namesthe_sample_names: "Name(s)\\nThe sample name(s).  If only one name is given, the matched will be simply names as \\\"name-match\\\".  Two names\\nare given separated by \\\"|\\\", such as \\\"tumor|blood\\\"."
    floatthe_maximum_pvalue: "float\\nThe maximum p-value.  Default to 0.05."
    floatthe_minimum_mean_position: "float\\nThe minimum mean position of variants in the read.  Default: 5."
    floatthe_minimum_mean_quality: "float\\nThe minimum mean base quality.  Default to 22.5 for Illumina sequencing"
    floatthe_minimum_mapping: "float\\nThe minimum mapping quality.  Default to 0 for Illumina sequencing"
    integerthe_minimum_total: "integer\\nThe minimum total depth.  Default to 5"
    integerthe_minimum_variant: "integer\\nThe minimum variant depth.  Default to 3"
    floatthe_minimum_allele_frequency_default: "float\\nThe minimum allele frequency.  Default to 0.02"
    signalnoisethe_minimum_signal: "signal/noise\\nThe minimum signal to noise, or the ratio of hi/(lo+0.5).  Default to 1.5.  Set it higher for deep sequencing."
    floatthe_minimum_allele_frequency_consider: "float\\nThe minimum allele frequency to consider to be homozygous.  Default to 0.2.  Thus frequency > 0.8 (1-0.2) will\\nbe considered homozygous \\\"1/1\\\", between 0.5 - (1-0.2) will be \\\"1/0\\\", between (-f) - 0.5 will be \\\"0/1\\\",\\nbelow (-f) will be \\\"0/0\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}