class: CommandLineTool
id: htsfile.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: view
  doc: Write textual form of FILEs to standard output
  type: boolean
  inputBinding:
    prefix: --view
- id: copy
  doc: Copy the exact contents of FILE to DESTFILE
  type: boolean
  inputBinding:
    prefix: --copy
- id: no_header
  doc: Suppress header display in view mode
  type: boolean
  inputBinding:
    prefix: --no-header
- id: verbose
  doc: Increase verbosity of warnings and diagnostics
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- htsfile
