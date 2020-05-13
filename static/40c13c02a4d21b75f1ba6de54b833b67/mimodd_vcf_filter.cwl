class: CommandLineTool
id: mimodd_vcf_filter.cwl
inputs:
- id: input_file
  doc: 'a vcf input file (default: stdin)'
  type: string
  inputBinding:
    position: 0
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: samples
  doc: one or more sample names that the sample-specific filters --gt, --dp, and --gq
    should work on.
  type: string[]
  inputBinding:
    prefix: --samples
- id: gt
  doc: 'genotype patterns (one per sample, use ANY to skip the requirement for a given
    sample) to be included in the output; format: x/x where x = 0 and x = 1 stand
    for the reference and the variant allele, respectively; multiple allowed genotypes
    for a sample can be specified as a comma-separated list'
  type: string[]
  inputBinding:
    prefix: --gt
- id: dp
  doc: minimal coverage (one per sample, use 0 to skip the requirement for a given
    sample) required to include a site in the output
  type: string[]
  inputBinding:
    prefix: --dp
- id: gq
  doc: minimal genotype quality (one per sample, use 0 to skip the requirement for
    a given sample) required to include a site in the output
  type: string[]
  inputBinding:
    prefix: --gq
- id: af
  doc: '#:MIN_FRACTION:MAX_FRACTION [ALLELE#:MIN_FRACTION:MAX_FRACTION ...] the fraction
    of reads supporting a specific ALLELE# must be between MIN_FRACTION and MAX_FRACTION
    to include the site in the output'
  type: string
  inputBinding:
    prefix: --af
- id: r
  doc: '[REGION_FILTER [REGION_FILTER ...]], --region [REGION_FILTER [REGION_FILTER
    ...]] keep only variants that fall in one of the given chromsomal regions (specified
    in the format CHROM:START-STOP or CHROM: for a whole chromosome)'
  type: boolean
  inputBinding:
    prefix: -r
- id: no_indels
  doc: skip indels in the output
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: indels_only
  doc: keep only indels in the output
  type: boolean
  inputBinding:
    prefix: --indels-only
- id: v_filter
  doc: vertical sample names filter; if given, only sample columns specified by name
    will be retained in the output
  type: string[]
  inputBinding:
    prefix: --vfilter
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- vcf-filter
