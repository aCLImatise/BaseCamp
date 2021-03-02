version 1.0

task Var2vcfPairedpl {
  input {
    Boolean? print_this_usage
    Boolean? set_chrosomes_have
    Boolean? set_variants_pass
    Boolean? set_increase_stringency
    Boolean? indicate_output_variants
    Boolean? float_deprecatedthe_minimum
    Boolean? two_somatic_candidates
    Boolean? intthe_maximum_nonmonomer
    Boolean? intthe_maximum_mean
    Boolean? namesthe_sample_names
    Boolean? maximum_pvalue_default
    Boolean? minimum_mean_position
    Boolean? minimum_mean_base
    Boolean? minimum_mapping_quality
    Boolean? minimum_total_depth
    Boolean? minimum_variant_depth
    Boolean? minimum_allele_frequency_default
    Boolean? signalnoisethe_minimum_signal
    Boolean? minimum_allele_frequency_consider
  }
  command <<<
    var2vcf_paired_pl \
      ~{if (print_this_usage) then "-H" else ""} \
      ~{if (set_chrosomes_have) then "-C" else ""} \
      ~{if (set_variants_pass) then "-S" else ""} \
      ~{if (set_increase_stringency) then "-M" else ""} \
      ~{if (indicate_output_variants) then "-A" else ""} \
      ~{if (float_deprecatedthe_minimum) then "-D" else ""} \
      ~{if (two_somatic_candidates) then "-c" else ""} \
      ~{if (intthe_maximum_nonmonomer) then "-I" else ""} \
      ~{if (intthe_maximum_mean) then "-m" else ""} \
      ~{if (namesthe_sample_names) then "-N" else ""} \
      ~{if (maximum_pvalue_default) then "-P" else ""} \
      ~{if (minimum_mean_position) then "-p" else ""} \
      ~{if (minimum_mean_base) then "-q" else ""} \
      ~{if (minimum_mapping_quality) then "-Q" else ""} \
      ~{if (minimum_total_depth) then "-d" else ""} \
      ~{if (minimum_variant_depth) then "-v" else ""} \
      ~{if (minimum_allele_frequency_default) then "-f" else ""} \
      ~{if (signalnoisethe_minimum_signal) then "-o" else ""} \
      ~{if (minimum_allele_frequency_consider) then "-F" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vardict-java:1.8.2--0"
  }
  parameter_meta {
    print_this_usage: "Print this usage."
    set_chrosomes_have: "If set, chrosomes will have names of 1,2,3,...,X,Y, instead of chr1, chr2, ..., chrX, chrY"
    set_variants_pass: "If set, variants that didn't pass filters will not be present in VCF file"
    set_increase_stringency: "If set, will increase stringency for candidate somatic: flag P0.01Likely and InDelLikely, and add filter P0.05"
    indicate_output_variants: "Indicate to output all variants at the same position.  By default, only the variant with the highest allele frequency is converted to VCF."
    float_deprecatedthe_minimum: "float (0-1) # Deprecated\\nThe minimum allele frequency difference between two samples required in addition to p-value.  Not compatible\\nwith -M option.  It's for interest of identifying variants with different AF, not just somatic."
    two_somatic_candidates: "int\\nIf two somatic candidates are within {int} bp, they're both filtered.  Default: 0 or no filtering"
    intthe_maximum_nonmonomer: "int\\nThe maximum non-monomer MSI allowed for a HT variant with AF < 0.6.  By default, 12, or any variants with AF < 0.6 in a region\\nwith > 12 non-monomer MSI will be considered false positive.  For monomers, that number is 10."
    intthe_maximum_mean: "int\\nThe maximum mean mismatches allowed.  Default: 5.25, or if a variant is supported by reads with more than 5.25 mismatches, it'll be considered\\nfalse positive.  Mismatches don't includes indels in the alignment."
    namesthe_sample_names: "Name(s)\\nThe sample name(s).  If only one name is given, the matched will be simply names as \\\"name-match\\\".  Two names\\nare given separated by \\\"|\\\", such as \\\"tumor|blood\\\"."
    maximum_pvalue_default: "float\\nThe maximum p-value.  Default to 0.05."
    minimum_mean_position: "float\\nThe minimum mean position of variants in the read.  Default: 5."
    minimum_mean_base: "float\\nThe minimum mean base quality.  Default to 22.5 for Illumina sequencing"
    minimum_mapping_quality: "float\\nThe minimum mapping quality.  Default to 0 for Illumina sequencing"
    minimum_total_depth: "integer\\nThe minimum total depth.  Default to 5"
    minimum_variant_depth: "integer\\nThe minimum variant depth.  Default to 3"
    minimum_allele_frequency_default: "float\\nThe minimum allele frequency.  Default to 0.02"
    signalnoisethe_minimum_signal: "signal/noise\\nThe minimum signal to noise, or the ratio of hi/(lo+0.5).  Default to 1.5.  Set it higher for deep sequencing."
    minimum_allele_frequency_consider: "float\\nThe minimum allele frequency to consider to be homozygous.  Default to 0.2.  Thus frequency > 0.8 (1-0.2) will\\nbe considered homozygous \\\"1/1\\\", between 0.5 - (1-0.2) will be \\\"1/0\\\", between (-f) - 0.5 will be \\\"0/1\\\",\\nbelow (-f) will be \\\"0/0\\\".\\n-b  Path to the *.bed file which is used to generate contigs in the header\\n-G  Path to the *.fasta (*.fa) file which is used to generate reference tag in the header"
  }
  output {
    File out_stdout = stdout()
  }
}