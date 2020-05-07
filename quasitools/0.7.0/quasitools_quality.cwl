class: CommandLineTool
id: quasitools_quality.cwl
inputs:
- id: output_dir
  doc: '[required]'
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: trim_reads
  doc: Iteratively trim reads based on filter values if enabled. Remove reads which
    do not meet filter values if disabled.
  type: boolean
  inputBinding:
    prefix: --trim_reads
- id: mask_reads
  doc: Mask low quality regions in reads if below minimum read quality. This option
    and --ns cannot be both enabled simultaneously.
  type: boolean
  inputBinding:
    prefix: --mask_reads
- id: min_read_qual
  doc: Minimum quality for positions in read if masking is enabled.
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
  doc: / -mn, --mean   Use either median score (default) or mean score for the score
    cutoff value.
  type: boolean
  inputBinding:
    prefix: --median
- id: ns
  doc: Flag to enable the filtering of n's. This option and --mask_reads cannot be
    both enabled simultaneously.
  type: boolean
  inputBinding:
    prefix: --ns
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- quality
