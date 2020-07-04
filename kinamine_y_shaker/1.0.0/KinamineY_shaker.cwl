class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/KinamineY_shaker.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: protein_pilot_distinct_peptide_summary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fdr
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- KinamineY-shaker
