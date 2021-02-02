class: CommandLineTool
id: abundancebin.cwl
inputs:
- id: in_bin_num
  doc: (bin number)
  type: boolean
  inputBinding:
    prefix: -bin_num
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abundancebin
