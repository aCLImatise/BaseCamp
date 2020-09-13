class: CommandLineTool
id: ../../../mhpl8r.cwl
inputs:
- id: in_log_file
  doc: log file for diagnostic messages, warnings, and errors
  type: File
  inputBinding:
    prefix: --logfile
- id: in_tee
  doc: write diagnostic output to logfile AND terminal (stderr)
  type: boolean
  inputBinding:
    prefix: --tee
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhpl8r
