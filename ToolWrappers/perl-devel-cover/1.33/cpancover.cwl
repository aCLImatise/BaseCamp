class: CommandLineTool
id: cpancover.cwl
inputs:
- id: in_redo_cpan_cover_html
  doc: "-modules module_name\n-results_dir /path/to/dir\n-outputdir /path/to/dir\n\
    -outputfile filename.html\n-report report_name\n-generate_html\n-compress_old_versions\
    \ number_to_keep\n-local\n"
  type: boolean
  inputBinding:
    prefix: -redo_cpancover_html
- id: in_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: -info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cpancover
