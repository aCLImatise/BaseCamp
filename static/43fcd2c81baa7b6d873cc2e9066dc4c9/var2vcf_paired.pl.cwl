class: CommandLineTool
id: var2vcf_paired.pl.cwl
inputs:
- id: in_print_this_usage
  doc: Print this usage.
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_set_chrosomes_have
  doc: If set, chrosomes will have names of 1,2,3,...,X,Y, instead of chr1, chr2,
    ..., chrX, chrY
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_set_variants_pass
  doc: If set, variants that didn't pass filters will not be present in VCF file
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_set_output_only
  doc: If set, output only candidate somatic
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_indicate_output_variants
  doc: Indicate to output all variants at the same position.  By default, only the
    variant with the highest allele frequency is converted to VCF.
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_float_deprecatedthe_minimum
  doc: "float (0-1) # Deprecated\nThe minimum allele frequency difference between\
    \ two samples required in addition to p-value.  Not compitable\nwith -M option.\
    \  It's for interest of identifying variants with different AF, not just somatic."
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_two_somatic_candidates
  doc: "int\nIf two somatic candidates are within {int} bp, they're both filtered.\
    \  Default: 0 or no filtering"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_intthe_maximum_nonmonomer
  doc: "int\nThe maximum non-monomer MSI allowed for a HT variant with AF < 0.6. \
    \ By default, 12, or any variants with AF < 0.6 in a region\nwith > 12 non-monomer\
    \ MSI will be considered false positive.  For monomers, that number is 10."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_intthe_maximum_mean
  doc: "int\nThe maximum mean mismatches allowed.  Default: 5.25, or if a variant\
    \ is supported by reads with more than 5.25 mismathes, it'll be considered\nfalse\
    \ positive.  Mismatches don't includes indels in the alignment."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_namesthe_sample_names
  doc: "Name(s)\nThe sample name(s).  If only one name is given, the matched will\
    \ be simply names as \"name-match\".  Two names\nare given separated by \"|\"\
    , such as \"tumor|blood\"."
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_maximum_pvalue_default
  doc: "float\nThe maximum p-value.  Default to 0.05."
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_minimum_mean_position
  doc: "float\nThe minimum mean position of variants in the read.  Default: 5."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_minimum_mean_base
  doc: "float\nThe minimum mean base quality.  Default to 22.5 for Illumina sequencing"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_minimum_mapping_quality
  doc: "float\nThe minimum mapping quality.  Default to 0 for Illumina sequencing"
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_minimum_total_depth
  doc: "integer\nThe minimum total depth.  Default to 5"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_minimum_variant_depth
  doc: "integer\nThe minimum variant depth.  Default to 3"
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
    \ to 1.5.  Set it higher for deep sequencing."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_minimum_allele_frequency_consider
  doc: "float\nThe minimum allele frequency to consider to be homozygous.  Default\
    \ to 0.2.  Thus frequency > 0.8 (1-0.2) will\nbe considered homozygous \"1/1\"\
    , between 0.5 - (1-0.2) will be \"1/0\", between (-f) - 0.5 will be \"0/1\",\n\
    below (-f) will be \"0/0\"."
  type: boolean?
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- var2vcf_paired.pl
