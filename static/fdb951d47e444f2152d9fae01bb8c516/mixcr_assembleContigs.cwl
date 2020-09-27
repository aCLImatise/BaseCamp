class: CommandLineTool
id: mixcr_assembleContigs.cwl
inputs:
- id: in_overwrite_if_required
  doc: "Overwrite output file if it is corrupted or if it was generated from\ndifferent\
    \ input file or with different parameters. -f / --force-overwrite\noverrides this\
    \ option."
  type: boolean
  inputBinding:
    prefix: --overwrite-if-required
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
- id: in_json_report
  doc: JSON formatted report file
  type: File
  inputBinding:
    prefix: --json-report
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_stringstring_overrides_default
  doc: <String=String>       Overrides default parameter values.
  type: boolean
  inputBinding:
    prefix: -O
- id: in_report
  doc: "Report file (human readable version, see -j / --json-report for machine\n\
    readable report)"
  type: File
  inputBinding:
    prefix: --report
- id: in_threads
  doc: Processing threads
  type: string
  inputBinding:
    prefix: --threads
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assemble_contigs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_report_file
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- assembleContigs
