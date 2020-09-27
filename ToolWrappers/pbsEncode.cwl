class: CommandLineTool
id: pbsEncode.cwl
inputs:
- id: in_discard_gaps
  doc: "Discard gaps in the PBS.  Gaps in the input data are assumed\nto be represented\
    \ by rows consisting of a single \"-\" character."
  type: boolean
  inputBinding:
    prefix: --discard-gaps
- id: in_pbs_train_dot
  doc: pbsEncode anc.human-mouse.probs mammals.code > anc.human-mouse.bin
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbsEncode
