class: CommandLineTool
id: quasitools_hydra.cwl
inputs:
- id: in_output_dir
  doc: '[required]'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_reporting_threshold
  doc: "RANGE\nMinimum mutation frequency percent to\nreport."
  type: File?
  inputBinding:
    prefix: --reporting_threshold
- id: in_generate_consensus
  doc: Generate a mixed base consensus sequence.
  type: boolean?
  inputBinding:
    prefix: --generate_consensus
- id: in_consensus_pct
  doc: "RANGE\nMinimum percentage a base needs to be\nincorporated into the consensus\
    \ sequence."
  type: long?
  inputBinding:
    prefix: --consensus_pct
- id: in_quiet
  doc: Suppress all normal output.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_trim_reads
  doc: "Iteratively trim reads based on filter\nvalues if enabled. Remove reads which\
    \ do not\nmeet filter values if disabled."
  type: boolean?
  inputBinding:
    prefix: --trim_reads
- id: in_mask_reads
  doc: "Mask low coverage regions in reads if below\nminimum read quality. This option\
    \ and --ns\ncannot be both enabled simultaneously."
  type: boolean?
  inputBinding:
    prefix: --mask_reads
- id: in_min_read_qual
  doc: "Minimum quality for a position in a read to\nbe masked."
  type: long?
  inputBinding:
    prefix: --min_read_qual
- id: in_length_cut_off
  doc: "Reads which fall short of the specified\nlength will be filtered out."
  type: long?
  inputBinding:
    prefix: --length_cutoff
- id: in_score_cut_off
  doc: "Reads that have a median or mean quality\nscore (depending on the score type\n\
    specified) less than the score cutoff value\nwill be filtered out."
  type: long?
  inputBinding:
    prefix: --score_cutoff
- id: in_median
  doc: "Use either median score (default) or mean\nscore for the score cutoff value."
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_ns
  doc: "Flag to enable the filtering of n's.  This\noption and --mask_reads cannot\
    \ be both\nenabled simultaneously."
  type: boolean?
  inputBinding:
    prefix: --ns
- id: in_error_rate
  doc: Error rate for the sequencing platform.
  type: double?
  inputBinding:
    prefix: --error_rate
- id: in_min_variant_qual
  doc: "Minimum quality for variant to be considered\nlater on in the pipeline."
  type: long?
  inputBinding:
    prefix: --min_variant_qual
- id: in_min_dp
  doc: "Minimum required read depth for variant to\nbe considered later on in the\
    \ pipeline."
  type: long?
  inputBinding:
    prefix: --min_dp
- id: in_min_ac
  doc: "The minimum required allele count for\nvariant to be considered later on in\
    \ the\npipeline."
  type: long?
  inputBinding:
    prefix: --min_ac
- id: in_min_freq
  doc: "The minimum required frequency for mutation\nto be considered in drug resistance\
    \ report."
  type: double?
  inputBinding:
    prefix: --min_freq
- id: in_id
  doc: "Specify FASTA sequence identifier to be used\nin the consensus report."
  type: string?
  inputBinding:
    prefix: --id
- id: in_forward
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reverse
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- quasitools
- hydra
