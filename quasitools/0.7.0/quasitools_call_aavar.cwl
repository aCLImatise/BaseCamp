class: CommandLineTool
id: ../../../quasitools_call_aavar.cwl
inputs:
- id: in_min_freq
  doc: the minimum required frequency.
  type: double
  inputBinding:
    prefix: --min_freq
- id: in_error_rate
  doc: estimated sequencing error rate.
  type: double
  inputBinding:
    prefix: --error_rate
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: --output
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
- id: in_bed_four_file
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_variants
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
- call
- aavar
