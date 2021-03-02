class: CommandLineTool
id: pslLiftSubrangeBlat.cwl
inputs:
- id: in_t_sizes
  doc: "- lift target side based on tName, using target sizes from\nthis tab separated\
    \ file."
  type: File?
  inputBinding:
    prefix: -tSizes
- id: in_q_sizes
  doc: "- lift query side based on qName, using query sizes from\nthis tab separated\
    \ file."
  type: File?
  inputBinding:
    prefix: -qSizes
- id: in_is_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslLiftSubrangeBlat
