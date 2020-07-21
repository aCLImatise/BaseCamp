class: CommandLineTool
id: ../../../tombo_filter_stuck.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: obs_per_base_filter
  doc: Filter reads based on observations per base percentile thresholds. Format thresholds
    as "percentile:thresh [pctl2:thresh2 ...]". For example to filter reads with 99th
    pctl > 200 obs/base or max > 5k obs/base use "99:200 100:5000".
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- filter
- stuck
