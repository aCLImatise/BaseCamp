class: CommandLineTool
id: ../../../deblur_remove_chimeras_denovo.cwl
inputs:
- id: in_log_level
  doc: RANGE  Level of messages for log file(range 1-debug to
  type: long
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deblur
- remove-chimeras-denovo
