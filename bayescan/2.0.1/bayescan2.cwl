class: CommandLineTool
id: bayescan2.cwl
inputs:
- id: out_pilot
  doc: Optional output file for pilot runs
  type: boolean
  inputBinding:
    prefix: -out_pilot
- id: out_freq
  doc: Optional output file for allele frequencies
  type: boolean
  inputBinding:
    prefix: -out_freq
outputs: []
cwlVersion: v1.1
baseCommand:
- bayescan2
