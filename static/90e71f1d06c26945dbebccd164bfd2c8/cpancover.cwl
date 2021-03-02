class: CommandLineTool
id: cpancover.cwl
inputs:
- id: in_redo_cpan_cover_html
  doc: /path/to/dir
  type: File?
  inputBinding:
    prefix: -redo_cpancover_html
- id: in_output_dir
  doc: /path/to/dir
  type: boolean?
  inputBinding:
    prefix: -outputdir
- id: in_version
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_info
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cpancover
