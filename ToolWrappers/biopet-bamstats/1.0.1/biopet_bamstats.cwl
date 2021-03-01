class: CommandLineTool
id: biopet_bamstats.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_tool_name
  doc: Name of the tool to execute
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
- biopet-bamstats
