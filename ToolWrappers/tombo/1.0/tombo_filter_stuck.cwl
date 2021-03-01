class: CommandLineTool
id: tombo_filter_stuck.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_obs_per_base_filter
  doc: "Filter reads baseed on observations per base\npercentile thresholds. Format\
    \ thresholds as\n\"percentile:thresh [pctl2:thresh2 ...]\". For example\nto filter\
    \ reads with 99th pctl > 200 obs/base or max >\n5k obs/base use \"99:200 100:5000\"\
    ."
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- filter_stuck
