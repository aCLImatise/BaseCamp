class: CommandLineTool
id: PgSAtest.cwl
inputs:
- id: in_by_position
  doc: by position
  type: string
  inputBinding:
    prefix: -p
- id: in_reads_uncorrecly_concatenated
  doc: reads (for uncorrecly concatenated pair-ended data)
  type: string
  inputBinding:
    prefix: -s
- id: in_filter
  doc: reads (for compatibility with CGk tests)
  type: string
  inputBinding:
    prefix: -filter
- id: in_c
  doc: ''
  type: File
  inputBinding:
    prefix: -c
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_repeats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_test_km_ers
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_index_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PgSAtest
