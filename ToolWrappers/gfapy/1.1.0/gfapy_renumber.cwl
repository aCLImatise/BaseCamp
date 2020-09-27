class: CommandLineTool
id: gfapy_renumber.cwl
inputs:
- id: in_out
  doc: output GFA file [/dev/stdout]
  type: File
  inputBinding:
    prefix: --out
- id: in_gfa
  doc: input GFA file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output GFA file [/dev/stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- gfapy-renumber
