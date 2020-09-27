class: CommandLineTool
id: umis_mb_filter.cwl
inputs:
- id: in_cores
  doc: "--help           Show this message and exit.\n"
  type: long
  inputBinding:
    prefix: --cores
- id: in_fast_q
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
- umis
- mb_filter
