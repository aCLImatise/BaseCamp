class: CommandLineTool
id: ../../../deblur_dereplicate.cwl
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
- id: seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- dereplicate
