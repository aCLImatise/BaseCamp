class: CommandLineTool
id: vcfallelicprimitives.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: use_mnps
  doc: 'Retain MNPs as separate events (default: false).'
  type: boolean
  inputBinding:
    prefix: --use-mnps
- id: tag_parsed
  doc: Tag records which are split apart of a complex allele with this flag.
  type: string
  inputBinding:
    prefix: --tag-parsed
- id: max_length
  doc: 'Do not manipulate records in which either the ALT or REF is longer than LEN
    (default: 200).'
  type: string
  inputBinding:
    prefix: --max-length
- id: keep_info
  doc: Maintain site and allele-level annotations when decomposing. Note that in many
    cases, such as multisample VCFs, these won't be valid post-decomposition.  For
    biallelic loci in single-sample VCFs, they should be usable with caution.
  type: boolean
  inputBinding:
    prefix: --keep-info
- id: keep_geno
  doc: Maintain genotype-level annotations when decomposing.  Similar caution should
    be used for this as for --keep-info.
  type: boolean
  inputBinding:
    prefix: --keep-geno
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfallelicprimitives
