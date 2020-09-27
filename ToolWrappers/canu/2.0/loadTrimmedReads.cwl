class: CommandLineTool
id: loadTrimmedReads.cwl
inputs:
- id: in_path_sequence_store
  doc: Path to the sequence store
  type: File
  inputBinding:
    prefix: -S
- id: in_path_file_clear
  doc: Path to the file of clear ranges
  type: File
  inputBinding:
    prefix: -c
- id: in_report_range_changes
  doc: Report clear range changes to stderr
  type: boolean
  inputBinding:
    prefix: -v
- id: in_do_apply_changes
  doc: Don't apply changes
  type: boolean
  inputBinding:
    prefix: -n
- id: in_test_norm
  doc: e s       Test translating trim points between
  type: string
  inputBinding:
    prefix: -testnorm
- id: in_test_comp
  doc: "e s       normal and compressed sequences.  's' must\nbe normal (uncompressed)\
    \ sequence."
  type: string
  inputBinding:
    prefix: -testcomp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- loadTrimmedReads
