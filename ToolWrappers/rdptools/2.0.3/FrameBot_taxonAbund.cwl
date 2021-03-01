class: CommandLineTool
id: FrameBot_taxonAbund.cwl
inputs:
- id: in_seq_coverage
  doc: "contains the ID and coverage separated by space or\ntab. Used to adjust the\
    \ sequence abundance"
  type: string?
  inputBinding:
    prefix: --seqCoverage
- id: in_identity
  doc: "the minimum protein identity, default is 0, range\n[0-100]"
  type: long?
  inputBinding:
    prefix: --identity
- id: in_frame_bot_alignment_file_or_dir
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_seq_lineage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- FrameBot
- taxonAbund
