class: CommandLineTool
id: div_snp_table_chr.py.cwl
inputs:
- id: feature_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ar_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: snp_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: div_directory
  doc: ''
  type: string
  inputBinding:
    position: 3
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
outputs: []
cwlVersion: v1.1
baseCommand:
- div_snp_table_chr.py
