class: CommandLineTool
id: tombo_filter_q_score.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_q_score
  doc: "Q-score threshold for filtering low quality reads.\nDefault: 7.000000"
  type: double?
  inputBinding:
    prefix: --q-score
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_group
  doc: "FAST5 group obtain original basecalls (under Analyses\ngroup). Default: Basecall_1D_000"
  type: long?
  inputBinding:
    prefix: --basecall-group
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
- q_score
