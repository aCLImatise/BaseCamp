class: CommandLineTool
id: download_spectacle_data.sh.cwl
inputs:
- id: in_canonicalize_following_symlinks
  doc: Canonicalize by following all symlinks
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_do_add_newline
  doc: Don't add newline
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_fnv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -fnv
- id: in_readlink
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
hints: []
cwlVersion: v1.1
baseCommand:
- download_spectacle_data.sh
