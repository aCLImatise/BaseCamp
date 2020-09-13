class: CommandLineTool
id: ../../../cpancover.cwl
inputs:
- id: in_redo_cpan_cover_html
  doc: ''
  type: boolean
  inputBinding:
    prefix: -redo_cpancover_html
- id: in_modules
  doc: ''
  type: string
  inputBinding:
    prefix: -modules
- id: in_results_dir
  doc: /path/to/dir
  type: boolean
  inputBinding:
    prefix: -results_dir
- id: in_output_dir
  doc: /path/to/dir
  type: boolean
  inputBinding:
    prefix: -outputdir
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    prefix: -outputfile
- id: in_report
  doc: ''
  type: string
  inputBinding:
    prefix: -report
- id: in_generate_html
  doc: ''
  type: boolean
  inputBinding:
    prefix: -generate_html
- id: in_compress_old_versions
  doc: ''
  type: long
  inputBinding:
    prefix: -compress_old_versions
- id: in_local
  doc: ''
  type: boolean
  inputBinding:
    prefix: -local
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
