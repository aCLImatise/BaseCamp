class: CommandLineTool
id: netChainSubset.cwl
inputs:
- id: in_gap_out
  doc: '- Output gap sizes to file'
  type: File?
  inputBinding:
    prefix: -gapOut
- id: in_type
  doc: '- Restrict output to particular type in net file'
  type: File?
  inputBinding:
    prefix: -type
- id: in_split_on_insert
  doc: '- Split chain when get an insertion of another chain'
  type: boolean?
  inputBinding:
    prefix: -splitOnInsert
- id: in_whole_chains
  doc: "- Write entire chain references by net, don't split\nwhen a high-level net\
    \ is encoundered.  This is useful when nets\nhave been filtered."
  type: boolean?
  inputBinding:
    prefix: -wholeChains
- id: in_skip_missing
  doc: "- skip chains that are not found instead of generating\nan error.  Useful\
    \ if chains have been filtered.\n"
  type: boolean?
  inputBinding:
    prefix: -skipMissing
- id: in_in_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gap_out
  doc: '- Output gap sizes to file'
  type: File?
  outputBinding:
    glob: $(inputs.in_gap_out)
- id: out_type
  doc: '- Restrict output to particular type in net file'
  type: File?
  outputBinding:
    glob: $(inputs.in_type)
hints: []
cwlVersion: v1.1
baseCommand:
- netChainSubset
