class: CommandLineTool
id: wgfast_genbankqc_log_stats.cwl
inputs:
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wgfast_genbankqc
- log-stats
