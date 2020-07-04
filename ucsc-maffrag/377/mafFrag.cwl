class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafFrag.cwl
inputs:
- id: out_name
  doc: Use XXX instead of database.chrom for the name
  type: string
  inputBinding:
    prefix: -outName
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: maf_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFrag
