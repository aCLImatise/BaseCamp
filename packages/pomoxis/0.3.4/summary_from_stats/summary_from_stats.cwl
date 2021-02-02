class: CommandLineTool
id: summary_from_stats.cwl
inputs:
- id: in_per_reference
  doc: 'Also output a summary for each reference. (default:'
  type: boolean
  inputBinding:
    prefix: --per_reference
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- summary_from_stats
