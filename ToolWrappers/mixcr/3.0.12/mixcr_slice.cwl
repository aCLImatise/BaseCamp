class: CommandLineTool
id: mixcr_slice.cwl
inputs:
- id: in_overwrite_if_required
  doc: "Overwrite output file if it is corrupted or if it was generated from\ndifferent\
    \ input file or with different parameters. -f / --force-overwrite\noverrides this\
    \ option."
  type: boolean?
  inputBinding:
    prefix: --overwrite-if-required
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_id
  doc: List of read (for .vdjca) / clone (for .clns/.clna) ids to export.
  type: string?
  inputBinding:
    prefix: --id
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_slice
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- slice
