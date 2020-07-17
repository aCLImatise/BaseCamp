class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/div_snp_table_chr.py.cwl
inputs:
- id: mask
  doc: Mask AR and features with this file
  type: string
  inputBinding:
    prefix: --mask
- id: suffix
  doc: append suffix to chromosomes to get filenames from div_directory
  type: string
  inputBinding:
    prefix: --suffix
- id: lens
  doc: Set chromosome ends using LEN file
  type: string
  inputBinding:
    prefix: --lens
- id: feature_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ar_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: snp_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: div_directory
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- div_snp_table_chr.py
