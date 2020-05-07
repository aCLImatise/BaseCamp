class: CommandLineTool
id: srf_info.cwl
inputs:
- id: l
  doc: 1 Count of good/bad reads. 2 Counts for selected chunk types. 4 Trace count
    and trace name prefix for each trace_header. 8 Base count.
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_info
