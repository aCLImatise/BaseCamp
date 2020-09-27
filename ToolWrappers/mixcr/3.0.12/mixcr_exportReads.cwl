class: CommandLineTool
id: mixcr_exportReads.cwl
inputs:
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_export_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_export
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_input_do_tv_dj_ca
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- mixcr
- exportReads
