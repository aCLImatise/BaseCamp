class: CommandLineTool
id: vcfallelicprimitives.cwl
inputs:
- id: in_use_mnps
  doc: 'Retain MNPs as separate events (default: false).'
  type: boolean?
  inputBinding:
    prefix: --use-mnps
- id: in_tag_parsed
  doc: Tag records which are split apart of a complex allele with this flag.
  type: string?
  inputBinding:
    prefix: --tag-parsed
- id: in_max_length
  doc: "Do not manipulate records in which either the ALT or\nREF is longer than LEN\
    \ (default: 200)."
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_keep_info
  doc: "Maintain site and allele-level annotations when decomposing.\nNote that in\
    \ many cases, such as multisample VCFs, these won't\nbe valid post-decomposition.\
    \  For biallelic loci in single-sample\nVCFs, they should be usable with caution."
  type: boolean?
  inputBinding:
    prefix: --keep-info
- id: in_keep_geno
  doc: "Maintain genotype-level annotations when decomposing.  Similar\ncaution should\
    \ be used for this as for --keep-info."
  type: boolean?
  inputBinding:
    prefix: --keep-geno
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfallelicprimitives
