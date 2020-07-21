class: CommandLineTool
id: ../../../tombo_filter_q_score.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: q_score
  doc: 'Q-score threshold for filtering low quality reads. Default: 7.000000'
  type: string
  inputBinding:
    prefix: --q-score
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_group
  doc: 'FAST5 group obtain original basecalls (under Analyses group). Default: Basecall_1D_000'
  type: string
  inputBinding:
    prefix: --basecall-group
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
- q_score
