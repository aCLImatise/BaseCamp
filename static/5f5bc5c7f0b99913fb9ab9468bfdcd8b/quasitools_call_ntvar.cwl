class: CommandLineTool
id: quasitools_call_ntvar.cwl
inputs:
- id: in_error_rate
  doc: estimated sequencing error rate.
  type: double?
  inputBinding:
    prefix: --error_rate
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
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
- quasitools
- call
- ntvar
