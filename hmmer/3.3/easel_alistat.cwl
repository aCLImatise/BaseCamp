class: CommandLineTool
id: ../../../easel_alistat.cwl
inputs:
- id: use_tabular_output
  doc: ': use tabular output, one line per alignment'
  type: boolean
  inputBinding:
    prefix: '-1'
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
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- alistat
