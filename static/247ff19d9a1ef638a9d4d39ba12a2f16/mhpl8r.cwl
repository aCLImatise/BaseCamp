class: CommandLineTool
id: mhpl8r.cwl
inputs:
- id: sub_cmd
  doc: contain, contrib, diff, dist, mix, prob, seq, sim, type, unite
  type: string
  inputBinding:
    position: 0
- id: log_file
  doc: log file for diagnostic messages, warnings, and errors
  type: string
  inputBinding:
    prefix: --logfile
- id: tee
  doc: write diagnostic output to logfile AND terminal (stderr)
  type: boolean
  inputBinding:
    prefix: --tee
outputs: []
cwlVersion: v1.1
baseCommand:
- mhpl8r
