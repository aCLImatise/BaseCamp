class: CommandLineTool
id: deblur_build_db_index_OPTIONS_REF_FP.cwl
inputs:
- id: log_level
  doc: 'RANGE  Level of messages for log file(range 1-debug to 5-critical  [default:
    2]'
  type: long
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- build-db-index
- OPTIONS
- REF_FP
