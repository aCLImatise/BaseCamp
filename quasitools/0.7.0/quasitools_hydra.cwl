class: CommandLineTool
id: quasitools_hydra.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: forward
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reverse
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: generate_consensus
  doc: Generate a mixed base consensus sequence.
  type: boolean
  inputBinding:
    prefix: --generate_consensus
- id: consensus_pct
  doc: RANGE Minimum percentage a base needs to be incorporated into the consensus
    sequence.
  type: long
  inputBinding:
    prefix: --consensus_pct
- id: quiet
  doc: Suppress all normal output.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: trim_reads
  doc: Iteratively trim reads based on filter values if enabled. Remove reads which
    do not meet filter values if disabled.
  type: boolean
  inputBinding:
    prefix: --trim_reads
- id: mask_reads
  doc: Mask low coverage regions in reads if below minimum read quality. This option
    and --ns cannot be both enabled simultaneously.
  type: boolean
  inputBinding:
    prefix: --mask_reads
- id: min_read_qual
  doc: Minimum quality for a position in a read to be masked.
  type: long
  inputBinding:
    prefix: --min_read_qual
- id: length_cut_off
  doc: Reads which fall short of the specified length will be filtered out.
  type: long
  inputBinding:
    prefix: --length_cutoff
- id: score_cut_off
  doc: Reads that have a median or mean quality score (depending on the score type
    specified) less than the score cutoff value will be filtered out.
  type: long
  inputBinding:
    prefix: --score_cutoff
- id: median
  doc: / -mn, --mean     Use either median score (default) or mean score for the score
    cutoff value.
  type: boolean
  inputBinding:
    prefix: --median
- id: ns
  doc: Flag to enable the filtering of n's.  This option and --mask_reads cannot be
    both enabled simultaneously.
  type: boolean
  inputBinding:
    prefix: --ns
- id: error_rate
  doc: Error rate for the sequencing platform.
  type: double
  inputBinding:
    prefix: --error_rate
- id: min_variant_qual
  doc: Minimum quality for variant to be considered later on in the pipeline.
  type: long
  inputBinding:
    prefix: --min_variant_qual
- id: min_dp
  doc: Minimum required read depth for variant to be considered later on in the pipeline.
  type: long
  inputBinding:
    prefix: --min_dp
- id: min_ac
  doc: The minimum required allele count for variant to be considered later on in
    the pipeline.
  type: long
  inputBinding:
    prefix: --min_ac
- id: min_freq
  doc: The minimum required frequency for mutation to be considered in drug resistance
    report.
  type: double
  inputBinding:
    prefix: --min_freq
- id: id
  doc: Specify FASTA sequence identifier to be used in the consensus report.
  type: string
  inputBinding:
    prefix: --id
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- hydra
