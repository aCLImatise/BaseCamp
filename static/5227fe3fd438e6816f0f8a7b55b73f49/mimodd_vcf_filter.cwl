class: CommandLineTool
id: mimodd_vcf_filter.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_samples
  doc: "one or more sample names that the sample-specific\nfilters --gt, --dp, and\
    \ --gq should work on."
  type: string[]
  inputBinding:
    prefix: --samples
- id: in_gt
  doc: "genotype patterns (one per sample, use ANY to skip the\nrequirement for a\
    \ given sample) to be included in the\noutput; format: x/x where x = 0 and x =\
    \ 1 stand for\nthe reference and the variant allele, respectively;\nmultiple allowed\
    \ genotypes for a sample can be\nspecified as a comma-separated list"
  type: string[]
  inputBinding:
    prefix: --gt
- id: in_dp
  doc: "minimal coverage (one per sample, use 0 to skip the\nrequirement for a given\
    \ sample) required to include a\nsite in the output"
  type: string[]
  inputBinding:
    prefix: --dp
- id: in_gq
  doc: "minimal genotype quality (one per sample, use 0 to\nskip the requirement for\
    \ a given sample) required to\ninclude a site in the output"
  type: string[]
  inputBinding:
    prefix: --gq
- id: in_af
  doc: "#:MIN_FRACTION:MAX_FRACTION [ALLELE#:MIN_FRACTION:MAX_FRACTION ...]\nthe fraction\
    \ of reads supporting a specific ALLELE#\nmust be between MIN_FRACTION and MAX_FRACTION\
    \ to\ninclude the site in the output"
  type: string?
  inputBinding:
    prefix: --af
- id: in_keep_only_variants
  doc: "[REGION_FILTER [REGION_FILTER ...]], --region [REGION_FILTER [REGION_FILTER\
    \ ...]]\nkeep only variants that fall in one of the given\nchromsomal regions\
    \ (specified in the format\nCHROM:START-STOP or CHROM: for a whole chromosome)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_no_indels
  doc: skip indels in the output
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_indels_only
  doc: keep only indels in the output
  type: boolean?
  inputBinding:
    prefix: --indels-only
- id: in_v_filter
  doc: "vertical sample names filter; if given, only sample\ncolumns specified by\
    \ name will be retained in the\noutput"
  type: string[]
  inputBinding:
    prefix: --vfilter
- id: in_input_file
  doc: 'a vcf input file (default: stdin)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- vcf-filter
