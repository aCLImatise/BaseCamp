class: CommandLineTool
id: dbsnp_iit.cwl
inputs:
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_allele_freq_sum_not_one
  doc: DuplicateObserved
  type: long
  inputBinding:
    position: 0
- id: in_flank_mismatch_genome_equal
  doc: FlankMismatchGenomeLonger
  type: string
  inputBinding:
    position: 1
- id: in_flank_mismatch_genome_shorter
  doc: InconsistentAlleles
  type: string
  inputBinding:
    position: 2
- id: in_mixed_observed
  doc: MultipleAlignments
  type: string
  inputBinding:
    position: 3
- id: in_named_deletion_zero_span
  doc: NamedInsertionNonzeroSpan
  type: string
  inputBinding:
    position: 4
- id: in_observed_mismatch
  doc: ObservedTooLong
  type: string
  inputBinding:
    position: 5
- id: in_observed_wrong_format
  doc: RefAlleleMismatch
  type: string
  inputBinding:
    position: 6
- id: in_ref_allele_rev_comp
  doc: SingleAlleleFreq
  type: string
  inputBinding:
    position: 7
- id: in_single_class_longer_span
  doc: SingleClassQuadAllelic
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dbsnp_iit
