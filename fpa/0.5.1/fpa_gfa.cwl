class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fpa_gfa.cwl
inputs:
- id: containment
  doc: Keep containment overlap
  type: boolean
  inputBinding:
    prefix: --containment
- id: internal_match
  doc: Keep internal match overlap
  type: boolean
  inputBinding:
    prefix: --internalmatch
- id: output
  doc: Write mapping passing filter in gfa1 graph format in path passed as parameter
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- gfa
