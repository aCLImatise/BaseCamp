class: CommandLineTool
id: tiddit.cwl
inputs:
- id: in_sv
  doc: call structural variation
  type: boolean
  inputBinding:
    prefix: --sv
- id: in_cov
  doc: generate a coverage bed file
  type: boolean
  inputBinding:
    prefix: --cov
- id: in_tidd_it_two_do_tone_two_dot_zero
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tiddit
