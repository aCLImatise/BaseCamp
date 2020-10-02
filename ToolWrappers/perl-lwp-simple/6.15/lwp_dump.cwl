class: CommandLineTool
id: lwp_dump.cwl
inputs:
- id: in_agent
  doc: "--keep-client-headers\n--max-length <n>\n--method <str>\n--parse-head\n--request\n"
  type: long
  inputBinding:
    prefix: --agent
- id: in_url
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
- lwp-dump
