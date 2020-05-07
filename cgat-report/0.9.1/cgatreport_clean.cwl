class: CommandLineTool
id: cgatreport_clean.cwl
inputs:
- id: verbose
  doc: loglevel. The higher, the more output [default=2]
  type: string
  inputBinding:
    prefix: --verbose
- id: section
  doc: only clean from certain sections [default=[]]
  type: string
  inputBinding:
    prefix: --section
- id: path
  doc: path to rst source [default=.]
  type: File
  inputBinding:
    prefix: --path
- id: build
  doc: path to build dir [default=.]
  type: string
  inputBinding:
    prefix: --build
- id: dry_run
  doc: only show what is about to be deleted, but do not delete [default=False]
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-clean
