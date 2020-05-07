class: CommandLineTool
id: geno2lfmm.cwl
inputs:
- id: input
  doc: -h
  type: File
  inputBinding:
    prefix: -input
- id: output
  doc: -h.lfmm
  type: File
  inputBinding:
    prefix: -output
outputs: []
cwlVersion: v1.1
baseCommand:
- geno2lfmm
