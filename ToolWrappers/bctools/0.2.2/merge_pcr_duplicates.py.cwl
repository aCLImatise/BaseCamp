class: CommandLineTool
id: ../../../merge_pcr_duplicates.py.cwl
inputs:
- id: in_outfile
  doc: Write results to this file.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_pcr_duplicates.py
