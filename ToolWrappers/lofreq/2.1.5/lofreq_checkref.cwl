class: CommandLineTool
id: lofreq_checkref.cwl
inputs:
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lofreq
- checkref
