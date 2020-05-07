class: CommandLineTool
id: gfold.cwl
inputs:
- id: g_fold
  doc: ':   Generalized fold change for ranking differentially expressed    genes
    from RNA-seq data.'
  type: string
  inputBinding:
    position: 0
- id: author
  doc: ':   Jianxing Feng (jianxing.tongji@gmail.com)'
  type: string
  inputBinding:
    position: 1
- id: date
  doc: ':   Sun May 24 07:42:36 CST 2015'
  type: string
  inputBinding:
    position: 2
- id: version
  doc: ':   V1.1.4'
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gfold
