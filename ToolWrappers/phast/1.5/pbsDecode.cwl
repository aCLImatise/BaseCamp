class: CommandLineTool
id: pbsDecode.cwl
inputs:
- id: in_start
  doc: "Decode only the subsequence starting at position <sidx>.\nIndexing starts\
    \ with 1."
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "Decode only the subsequence ending at position <eidx>.\nIndexing starts with\
    \ 1."
  type: long?
  inputBinding:
    prefix: --end
- id: in_discard_gaps
  doc: Do not report gaps in the PBS.
  type: boolean?
  inputBinding:
    prefix: --discard-gaps
- id: in_input_dot_bin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_code_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbsDecode
