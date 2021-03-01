class: CommandLineTool
id: deblur_trim.cwl
inputs:
- id: in_trim_length
  doc: Sequence trim length  [required]
  type: long?
  inputBinding:
    prefix: --trim-length
- id: in_log_level
  doc: RANGE  Level of messages for log file(range 1-debug to
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_fp
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
- deblur
- trim
