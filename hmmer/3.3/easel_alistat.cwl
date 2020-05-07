class: CommandLineTool
id: easel_alistat.cwl
inputs:
- id: dna
  doc: ": use DNA alphabet (don't autodetect)"
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ": use RNA alphabet (don't autodetect)"
  type: boolean
  inputBinding:
    prefix: --rna
- id: amino
  doc: ": use protein alphabet (don't autodetect)"
  type: boolean
  inputBinding:
    prefix: --amino
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- alistat
