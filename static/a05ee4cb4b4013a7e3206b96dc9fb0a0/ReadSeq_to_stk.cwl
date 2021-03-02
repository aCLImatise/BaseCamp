class: CommandLineTool
id: ReadSeq_to_stk.cwl
inputs:
- id: in_header
  doc: "the header of the output file in case a differenet\nstk version, default is\
    \ # STOCKHOLM 1.0"
  type: File?
  inputBinding:
    prefix: --header
- id: in_remove_ref
  doc: "is set, do not write the GC reference sequences to\noutput\n"
  type: boolean?
  inputBinding:
    prefix: --removeref
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_header
  doc: "the header of the output file in case a differenet\nstk version, default is\
    \ # STOCKHOLM 1.0"
  type: File?
  outputBinding:
    glob: $(inputs.in_header)
hints: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-stk
