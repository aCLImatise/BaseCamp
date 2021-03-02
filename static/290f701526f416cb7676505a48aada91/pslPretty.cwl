class: CommandLineTool
id: pslPretty.cwl
inputs:
- id: in_axt
  doc: "Save in format like Scott Schwartz's axt format.\nNote gaps in both sequences\
    \ are still allowed in the\noutput, which not all axt readers will expect."
  type: boolean?
  inputBinding:
    prefix: -axt
- id: in_dot
  doc: Output a dot every N records.
  type: string?
  inputBinding:
    prefix: -dot
- id: in_long
  doc: Don't abbreviate long inserts.
  type: boolean?
  inputBinding:
    prefix: -long
- id: in_check
  doc: Output alignment checks to filename.
  type: File?
  inputBinding:
    prefix: -check
- id: in_in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_check
  doc: Output alignment checks to filename.
  type: File?
  outputBinding:
    glob: $(inputs.in_check)
hints: []
cwlVersion: v1.1
baseCommand:
- pslPretty
