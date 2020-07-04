class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pilfile.py.cwl
inputs:
- id: list_supported_formats
  doc: list supported file formats
  type: boolean
  inputBinding:
    prefix: -f
- id: show_associated_info
  doc: show associated info and tile data
  type: boolean
  inputBinding:
    prefix: -i
- id: verify_file_headers
  doc: verify file headers
  type: boolean
  inputBinding:
    prefix: -v
- id: quiet_warn_unidentifiedmissingbroken
  doc: quiet, don't warn for unidentified/missing/broken files
  type: boolean
  inputBinding:
    prefix: -q
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pilfile.py
