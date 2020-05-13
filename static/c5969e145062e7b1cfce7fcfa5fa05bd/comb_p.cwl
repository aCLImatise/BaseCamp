class: CommandLineTool
id: comb_p.cwl
inputs:
- id: pipeline
  doc: '- run acf, slk, fdr, peaks, region_p in succesion'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- comb-p
