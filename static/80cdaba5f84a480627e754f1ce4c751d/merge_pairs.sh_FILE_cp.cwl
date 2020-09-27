class: CommandLineTool
id: merge_pairs.sh_FILE_cp.cwl
inputs:
- id: in_write_to_stdout
  doc: Write to stdout
  type: boolean
  inputBinding:
    prefix: -c
- id: in_force
  doc: Force
  type: boolean
  inputBinding:
    prefix: -f
- id: in_test_file_integrity
  doc: Test file integrity
  type: boolean
  inputBinding:
    prefix: -t
- id: in_cft
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cft
- id: in_gunzip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge-pairs.sh
- FILE
- cp
