class: CommandLineTool
id: ../../../pilfile.py.cwl
inputs:
- id: in_list_supported_formats
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
- id: in_show_associated_info
  doc: show associated info and tile data
  type: boolean
  inputBinding:
    prefix: -i
- id: in_verify_file_headers
  doc: verify file headers
  type: boolean
  inputBinding:
    prefix: -v
- id: in_quiet_warn_unidentifiedmissingbroken
  doc: quiet, don't warn for unidentified/missing/broken files
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pilfile.py
