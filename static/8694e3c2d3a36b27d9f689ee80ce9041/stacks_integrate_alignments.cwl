class: CommandLineTool
id: stacks_integrate_alignments.cwl
inputs:
- id: in_b
  doc: ''
  type: File?
  inputBinding:
    prefix: -B
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stacks-integrate-alignments
