class: CommandLineTool
id: ../../../srf_info.cwl
inputs:
- id: count_goodbad_reads
  doc: 1 Count of good/bad reads. 2 Counts for selected chunk types. 4 Trace count
    and trace name prefix for each trace_header. 8 Base count.
  type: string
  inputBinding:
    prefix: -l
- id: level
  doc: ''
  type: string
  inputBinding:
    prefix: -level
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_info
