class: CommandLineTool
id: crlupdate.cwl
inputs:
- id: in_use_store_default
  doc: use the machine certificate store (default to user)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_verbose_mode_display
  doc: verbose mode (display status for every steps)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_force_download_replace
  doc: force download (and replace existing CRL)
  type: boolean?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crlupdate
