class: CommandLineTool
id: gfold.cwl
inputs:
- id: in_g_fold
  doc: ":   Generalized fold change for ranking differentially expressed   \ngenes\
    \ from RNA-seq data."
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: ':   Jianxing Feng (jianxing.tongji@gmail.com)'
  type: string
  inputBinding:
    position: 1
- id: in_date
  doc: ':   Sun May 24 07:42:36 CST 2015'
  type: string
  inputBinding:
    position: 2
- id: in_version
  doc: ':   V1.1.4'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfold
