class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ReadSeq_to_stk.cwl
inputs:
- id: header
  doc: 'the header of the output file in case a differenet stk version, default is
    # STOCKHOLM 1.0'
  type: string
  inputBinding:
    prefix: --header
- id: remove_ref
  doc: is set, do not write the GC reference sequences to output
  type: boolean
  inputBinding:
    prefix: --removeref
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- to-stk
