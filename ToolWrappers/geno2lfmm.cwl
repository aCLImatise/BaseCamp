class: CommandLineTool
id: geno2lfmm.cwl
inputs:
- id: in_input
  doc: --help
  type: File
  inputBinding:
    prefix: -input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- geno2lfmm
