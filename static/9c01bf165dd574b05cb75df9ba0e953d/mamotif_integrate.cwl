class: CommandLineTool
id: mamotif_integrate.cwl
inputs:
- id: p
  doc: 'MAnorm comparison peak file path (default: None)'
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: 'motifscan result file path (default: None)'
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: 'refgene file, default is none. (default: )'
  type: string
  inputBinding:
    prefix: -a
- id: n
  doc: 'Using negative test of this pk (default: False)'
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: 'correction type of pvalues, no correction or benjamin or bonferroni,default=benjamin
    (default: benjamin)'
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: 'Output directory. (default: None)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- mamotif-integrate
