class: CommandLineTool
id: unique_kmers.py.cwl
inputs:
- id: input_sequence_filename
  doc: Input FAST[AQ] sequence filename(s).
  type: string
  inputBinding:
    position: 0
- id: k_size
  doc: 'k-mer size to use (default: 32)'
  type: string
  inputBinding:
    prefix: --ksize
- id: error_rate
  doc: 'Acceptable error rate (default: 0.01)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: report
  doc: 'generate informational report and write to filename (default: None)'
  type: File
  inputBinding:
    prefix: --report
- id: stream_records
  doc: 'write input sequences to STDOUT (default: False)'
  type: boolean
  inputBinding:
    prefix: --stream-records
- id: diagnostics
  doc: 'print out recommended tablesize arguments and restrictions (default: False)'
  type: boolean
  inputBinding:
    prefix: --diagnostics
outputs: []
cwlVersion: v1.1
baseCommand:
- unique-kmers.py
