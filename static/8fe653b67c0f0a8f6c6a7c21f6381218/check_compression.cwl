class: CommandLineTool
id: check_compression.cwl
inputs:
- id: in_input_path
  doc: Path to Fast5 file or directory of Fast5 files
  type: File?
  inputBinding:
    prefix: --input_path
- id: in_check_all_reads
  doc: "Check all reads in a file individually (default: check\nonly the first read)"
  type: boolean?
  inputBinding:
    prefix: --check_all_reads
- id: in_recursive
  doc: Search recursively through folders for MultiRead fast5
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_checking
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_compression
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_type
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_raw
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_fast_five
  doc: ''
  type: long
  inputBinding:
    position: 10
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check_compression
