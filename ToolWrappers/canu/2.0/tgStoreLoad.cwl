class: CommandLineTool
id: tgStoreLoad.cwl
inputs:
- id: in_path_sequence_store
  doc: Path to the sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_path_tigstore_version
  doc: <v>     Path to the tigStore and version to add tigs to
  type: File?
  inputBinding:
    prefix: -T
- id: in_load_tigs_files
  doc: "Load the tig(s) from files listed in 'file-of-files'\n(WARNING: program will\
    \ succeed if this file is empty)"
  type: File?
  inputBinding:
    prefix: -L
- id: in_load_just_report
  doc: Don't load into store, just report what would have happened
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_dump
  doc: Dump the cns files as ASCII, don't load into store
  type: boolean?
  inputBinding:
    prefix: -dump
- id: in_test
  doc: Test the cns files for various errors, don't load into store
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_v
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_cns
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tgStoreLoad
