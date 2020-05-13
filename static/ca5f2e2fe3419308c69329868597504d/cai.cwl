class: CommandLineTool
id: cai.cwl
inputs:
- id: c_file
  doc: codon      [Eyeast_cai.cut] Codon usage table name
  type: boolean
  inputBinding:
    prefix: -cfile
outputs: []
cwlVersion: v1.1
baseCommand:
- cai
