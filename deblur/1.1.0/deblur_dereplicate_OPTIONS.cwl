class: CommandLineTool
id: deblur_dereplicate_OPTIONS.cwl
inputs:
- id: min_size
  doc: 'Discard sequences with an abundance value smaller than min-size  [default:
    2]'
  type: long
  inputBinding:
    prefix: --min-size
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
- dereplicate
- OPTIONS
