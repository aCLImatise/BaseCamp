class: CommandLineTool
id: var2vcf_valid.pl.cwl
inputs:
- id: in_var_0
  doc: this usage.
  type: string?
  inputBinding:
    prefix: -h
- id: in_var_1
  doc: this usage.
  type: string?
  inputBinding:
    prefix: -H
- id: in_set_variants_pass
  doc: set, variants that didn't pass filters will not be present in VCF file
  type: File?
  inputBinding:
    prefix: -S
- id: in_amplicon_based_variant
  doc: amplicon based variant calling.  Variant not supported by all amplicons will
    be considered false positve, with filter set to "AMPBIAS".
  type: string?
  inputBinding:
    prefix: -a
- id: in_output_variants_same
  doc: to output all variants at the same position.  By default, only the variant
    with the highest allele frequency is converted to VCF.
  type: string?
  inputBinding:
    prefix: -A
- id: in_two_seemingly_high
  doc: "int\nIf two seemingly high quality SNV variants are within {int} bp, they're\
    \ both filtered.  Default: 0, or no filtering"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_intthe_maximum_nonmonomer
  doc: "int\nThe maximum non-monomer MSI allowed for a HT variant with AF < 0.5. \
    \ By default, 12, or any variants with AF < 0.5 in a region\nwith >6 non-monomer\
    \ MSI will be considered false positive.  For monomers, that number is 13."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_maximum_mean_mismatches
  doc: "double\nThe maximum mean mismatches allowed.  Default: 5.25, or if a variant\
    \ is supported by reads with more than 5.25 mean mismathes, it'll be considered\n\
    false positive.  Mismatches don't includes indels in the alignment."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_mean_position
  doc: "float\nThe minimum mean position of variants in the read.  Default: 8."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_whehter_filter_variants
  doc: "0 or 1\nWhehter to filter variants with pstd = 0.  Default: 1 or yes.  Set\
    \ it to 0 for targeted PCR based sequencing, where pstd is expected."
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_minimum_mean_base
  doc: "float\nThe minimum mean base quality.  Default to 22.5 for Illumina sequencing"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_minimum_mapping_quality
  doc: "float\nThe minimum mapping quality.  Default to 10.0 for Illumina sequencing.\
    \  Variants with lower quality (<10) will be kept only if af >= 0.8"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_minimum_total_depth
  doc: "integer\nThe minimum total depth.  Default to 3, might consider lower depth\
    \ if (high quality variant count)*af >= 0.5"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_minimum_high_quality
  doc: "integer\nThe minimum high quality variant depth.  Default to 2.  Would consider\
    \ lower depth (high quality variant count)*af >= 0.5"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_minimum_allele_frequency_default
  doc: "float\nThe minimum allele frequency.  Default to 0.02"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_signalnoisethe_minimum_signal
  doc: "signal/noise\nThe minimum signal to noise, or the ratio of hi/(lo+0.5).  Default\
    \ to 1.5, that is both 2 variant reads are high quality."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_minimum_allele_frequency_consider
  doc: "float\nThe minimum allele frequency to consider to be homozygous.  Default\
    \ to 0.2.  Thus frequency < 0.2 will\nbe considered homozygous REF, while frequency\
    \ > 0.2 will be considered homozygous ALT."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_stringthe_sample_name
  doc: "string\nThe sample name to be used directly."
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_set_print_tag
  doc: If set, do not print END tag
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_minimum_number_split
  doc: "integer\nThe minimum number of split reads for SV.  Default: 1.  Change to\
    \ 0 if you want SV called from discordant pairs only.\n-b  Path to the *.bed file\
    \ which is used to generate contigs in the header"
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- var2vcf_valid.pl
