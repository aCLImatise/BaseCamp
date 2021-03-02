class: CommandLineTool
id: unique_kmers.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_quiet
  doc: 'k-mer size to use (default: 32)'
  type: long?
  inputBinding:
    prefix: --quiet
- id: in_error_rate
  doc: 'Acceptable error rate (default: 0.01)'
  type: double?
  inputBinding:
    prefix: --error-rate
- id: in_report
  doc: "generate informational report and write to filename\n(default: None)"
  type: File?
  inputBinding:
    prefix: --report
- id: in_stream_records
  doc: 'write input sequences to STDOUT (default: False)'
  type: boolean?
  inputBinding:
    prefix: --stream-records
- id: in_diagnostics
  doc: "print out recommended tablesize arguments and\nrestrictions (default: False)"
  type: boolean?
  inputBinding:
    prefix: --diagnostics
- id: in_input_sequence_filename
  doc: Input FAST[AQ] sequence filename(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unique-kmers.py
