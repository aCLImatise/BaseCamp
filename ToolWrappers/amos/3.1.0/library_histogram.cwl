class: CommandLineTool
id: library_histogram.cwl
inputs:
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_use_default
  doc: Number of characters of seqname to use as sublibrary (default=3)
  type: long?
  inputBinding:
    prefix: -f
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- library-histogram
