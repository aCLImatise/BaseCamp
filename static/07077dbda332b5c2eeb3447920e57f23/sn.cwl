class: CommandLineTool
id: sn.cwl
inputs:
- id: in_quiet_quiet_mode
  doc: '| -quiet            Quiet mode (minimal display)'
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sn
