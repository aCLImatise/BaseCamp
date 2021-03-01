class: CommandLineTool
id: deblur_multiple_seq_alignment.cwl
inputs:
- id: in_threads_per_sample
  doc: "Number of threads to use per sample (0 to\nuse all)  [default: 1]"
  type: long?
  inputBinding:
    prefix: --threads-per-sample
- id: in_log_level
  doc: "RANGE       Level of messages for log file(range 1-debug\nto 5-critical  [default:\
    \ 2]"
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
- multiple-seq-alignment
