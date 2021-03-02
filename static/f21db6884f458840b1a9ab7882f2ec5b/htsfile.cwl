class: CommandLineTool
id: htsfile.cwl
inputs:
- id: in_view
  doc: Write textual form of FILEs to standard output
  type: boolean?
  inputBinding:
    prefix: --view
- id: in_copy
  doc: Copy the exact contents of FILE to DESTFILE
  type: boolean?
  inputBinding:
    prefix: --copy
- id: in_no_header
  doc: Suppress header display in view mode
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_verbose
  doc: Increase verbosity of warnings and diagnostics
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_c_hhv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -chHv
- id: in_file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- htsfile
