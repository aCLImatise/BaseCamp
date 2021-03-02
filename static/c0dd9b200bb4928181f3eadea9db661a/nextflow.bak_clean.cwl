class: CommandLineTool
id: nextflow.bak_clean.cwl
inputs:
- id: in_after
  doc: Clean up runs executed after the specified one
  type: boolean?
  inputBinding:
    prefix: -after
- id: in_before
  doc: Clean up runs executed before the specified one
  type: boolean?
  inputBinding:
    prefix: -before
- id: in_but
  doc: Clean up all runs except the specified one
  type: boolean?
  inputBinding:
    prefix: -but
- id: in_dry_run
  doc: "Print names of file to be removed without deleting them\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -dry-run
- id: in_force
  doc: "Force clean command\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_keep_logs
  doc: "Removes only temporary files but retains execution log entries and\nmetadata\n\
    Default: false"
  type: boolean?
  inputBinding:
    prefix: -keep-logs
- id: in_quiet
  doc: "Do not print names of files removed\nDefault: false\n"
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_clean
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- clean
