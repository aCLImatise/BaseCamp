class: CommandLineTool
id: sam_filter.py.cwl
inputs:
- id: in_input_file
  doc: The input sam file.
  type: File
  inputBinding:
    prefix: --input_file
- id: in_min_align_score
  doc: "The sam records with alignment score smaller than this\nvalue will be discarded."
  type: long
  inputBinding:
    prefix: --min_align_score
- id: in_verbose
  doc: Show all information. Default "not set".
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sam_filter.py
