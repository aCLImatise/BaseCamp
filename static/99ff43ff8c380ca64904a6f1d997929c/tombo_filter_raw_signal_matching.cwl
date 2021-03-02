class: CommandLineTool
id: tombo_filter_raw_signal_matching.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_signal_matching_score
  doc: "Observed to expected signal matching score (higher\nscore indicates poor matching).\
    \ Sample type defaults:\nRNA : 2 || DNA : 1.1"
  type: double?
  inputBinding:
    prefix: --signal-matching-score
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
- raw_signal_matching
