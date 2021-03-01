class: CommandLineTool
id: tombo_filter_stuck.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_obs_per_base_filter
  doc: "Filter reads based on observations per base percentile\nthresholds. Format\
    \ thresholds as \"percentile:thresh\n[pctl2:thresh2 ...]\". For example to filter\
    \ reads with\n99th pctl > 200 obs/base or max > 5k obs/base use\n\"99:200 100:5000\"\
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
- filter
- stuck
