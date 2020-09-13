class: CommandLineTool
id: ../../../sim_reads_tran.cwl
inputs:
- id: in_error_rate
  doc: (=0.01)           error rate
  type: double
  inputBinding:
    prefix: --error_rate
- id: in_read_length
  doc: (=100)           read length
  type: long
  inputBinding:
    prefix: --read_length
- id: in_paired
  doc: if paired-end
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_sd
  doc: (=-1)                     sd
  type: long
  inputBinding:
    prefix: --sd
- id: in_insert_distance
  doc: (=500)       insert distance
  type: long
  inputBinding:
    prefix: --insert_distance
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_fa
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
- sim_reads_tran
