class: CommandLineTool
id: ../../../tombo_filter_raw_signal_matching.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: signal_matching_score
  doc: 'Observed to expected signal matching score (higher score indicates poor matching).
    Sample type defaults: RNA : 2 || DNA : 1.1'
  type: string
  inputBinding:
    prefix: --signal-matching-score
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
- raw_signal_matching
