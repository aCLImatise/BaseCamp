class: CommandLineTool
id: srf_info.cwl
inputs:
- id: in_count_goodbad_reads
  doc: "1 Count of good/bad reads.\n2 Counts for selected chunk types.\n4 Trace count\
    \ and trace name prefix for each trace_header.\n8 Base count.\n"
  type: long
  inputBinding:
    prefix: -l
- id: in_level
  doc: ''
  type: string
  inputBinding:
    prefix: -level
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- srf_info
