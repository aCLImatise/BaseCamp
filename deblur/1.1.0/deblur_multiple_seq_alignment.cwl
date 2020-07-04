class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/deblur_multiple_seq_alignment.cwl
inputs:
- id: threads_per_sample
  doc: 'Number of threads to use per sample (0 to use all)  [default: 1]'
  type: long
  inputBinding:
    prefix: --threads-per-sample
- id: log_level
  doc: 'RANGE       Level of messages for log file(range 1-debug to 5-critical  [default:
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
- multiple-seq-alignment
