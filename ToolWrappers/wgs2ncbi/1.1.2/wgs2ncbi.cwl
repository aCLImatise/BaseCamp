class: CommandLineTool
id: wgs2ncbi.cwl
inputs:
- id: in_ncbi
  doc: "SYNOPSIS\nUsage: wgs2ncbi [action] -conf [config file]"
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
- wgs2ncbi
